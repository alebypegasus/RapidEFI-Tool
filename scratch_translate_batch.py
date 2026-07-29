import os
import re
import json
from deep_translator import GoogleTranslator

base_dir = '.'
dart_files = []
for root, dirs, files in os.walk(os.path.join(base_dir, 'lib')):
    for f in files:
        if f.endswith('.dart'):
            dart_files.append(os.path.join(root, f))

dart_files = [f for f in dart_files if 'lib/l10n/' not in f and 'flutter_picker/picker_localizations' not in f]

pattern = re.compile(
    r"'''(?:[^'\\]|\\.)*[\u4e00-\u9fa5]+(?:[^'\\]|\\.)*'''|"
    r'\"\"\"(?:[^\"\\]|\\.)*[\u4e00-\u9fa5]+(?:[^\"\\]|\\.)*\"\"\"|'
    r"'(?:[^'\n\\]|\\.)*[\u4e00-\u9fa5]+(?:[^'\n\\]|\\.)*'|"
    r'\"(?:[^\"\n\\]|\\.)*[\u4e00-\u9fa5]+(?:[^\"\n\\]|\\.)*\"'
)

interpolation_pattern = re.compile(r'\$([a-zA-Z_][a-zA-Z0-9_]*)|(\$\{[^}]+\})')

def strip_quotes(s):
    if s.startswith("'''") or s.startswith('"""'):
        return s[:3], s[3:-3]
    else:
        return s[0], s[1:-1]

def extract_args(text):
    args = []
    def repl(m):
        if m.group(1):
            arg = m.group(1)
        else:
            arg = m.group(2)[2:-1]
        arg_name = f"arg{len(args)}"
        args.append((arg_name, arg))
        return f"{{{arg_name}}}"
    clean_text = interpolation_pattern.sub(repl, text)
    return clean_text, args

def batch_translate(texts, dest_lang):
    translator = GoogleTranslator(source='zh-CN', target=dest_lang)
    result = []
    batch_size = 50
    for i in range(0, len(texts), batch_size):
        batch = texts[i:i+batch_size]
        safe_batch = [re.sub(r'\{([^}]+)\}', r'___\1___', t) for t in batch]
        try:
            res = translator.translate_batch(safe_batch)
            for j, r in enumerate(res):
                if r is None: r = safe_batch[j]
                r = re.sub(r'___([a-zA-Z0-9_]+)___', r'{\1}', r)
                result.append(r)
        except Exception as e:
            print(f"Error in batch {i} for {dest_lang}: {e}")
            result.extend(batch)
    return result

strings_to_translate = {}
counter = 1

unique_literals = set()

for fpath in dart_files:
    with open(fpath, 'r', encoding='utf-8') as f:
        content = f.read()
    matches = pattern.findall(content)
    unique_literals.update(matches)

ordered_literals = list(unique_literals)
print(f"Found {len(ordered_literals)} unique strings.")

all_clean_texts = []
for full_literal in ordered_literals:
    quote, text = strip_quotes(full_literal)
    clean_text, args = extract_args(text)
    key = f"autoGen{counter}"
    counter += 1
    
    strings_to_translate[full_literal] = {
        'key': key,
        'args': args,
        'clean_text': clean_text
    }
    all_clean_texts.append(clean_text)

print("Starting batch translation...")
translations_zh = all_clean_texts
translations_en = batch_translate(all_clean_texts, 'en')
translations_pt = batch_translate(all_clean_texts, 'pt')
translations_ja = batch_translate(all_clean_texts, 'ja')

translations = {
    'zh': dict(zip([info['key'] for info in strings_to_translate.values()], translations_zh)),
    'en': dict(zip([info['key'] for info in strings_to_translate.values()], translations_en)),
    'pt': dict(zip([info['key'] for info in strings_to_translate.values()], translations_pt)),
    'ja': dict(zip([info['key'] for info in strings_to_translate.values()], translations_ja)),
}

for fpath in dart_files:
    with open(fpath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    new_content = content
    modified = False
    
    for full_literal in sorted(ordered_literals, key=len, reverse=True):
        if full_literal in new_content:
            info = strings_to_translate[full_literal]
            key = info['key']
            args = info['args']
            if args:
                args_str = ", ".join([a[1] for a in args])
                replacement = f"l10nGlobal.{key}({args_str})"
            else:
                replacement = f"l10nGlobal.{key}"
                
            new_content = new_content.replace(full_literal, replacement)
            modified = True
            
    if modified:
        if 'l10n_helper.dart' not in new_content:
            import_stmt = "import 'package:rapidefi/l10n/l10n_helper.dart';\n"
            if 'import ' in new_content:
                new_content = new_content.replace('import ', import_stmt + 'import ', 1)
            else:
                new_content = import_stmt + new_content
        with open(fpath, 'w', encoding='utf-8') as f:
            f.write(new_content)

arb_dir = 'lib/l10n'
for lang in ['en', 'pt', 'ja', 'zh']:
    arb_path = os.path.join(arb_dir, f'app_{lang}.arb')
    with open(arb_path, 'r', encoding='utf-8') as f:
        arb_data = json.load(f)
        
    for key, text in translations[lang].items():
        arb_data[key] = text
        args = next(info['args'] for info in strings_to_translate.values() if info['key'] == key)
        if args:
            arb_data[f"@{key}"] = {"placeholders": {a[0]: {} for a in args}}
            
    with open(arb_path, 'w', encoding='utf-8') as f:
        json.dump(arb_data, f, ensure_ascii=False, indent=2)

with open('lib/l10n/app_localizations.dart', 'r', encoding='utf-8') as f:
    app_loc = f.read()

getters = []
for full_literal, info in strings_to_translate.items():
    key = info['key']
    args = info['args']
    if args:
        args_decl = ", ".join([f"Object {a[0]}" for a in args])
        getters.append(f"  String {key}({args_decl});")
    else:
        getters.append(f"  String get {key};")
        
insert_pos = app_loc.rfind('}')
app_loc = app_loc[:insert_pos] + "\n".join(getters) + "\n" + app_loc[insert_pos:]
with open('lib/l10n/app_localizations.dart', 'w', encoding='utf-8') as f:
    f.write(app_loc)

for lang in ['en', 'pt', 'ja', 'zh']:
    dart_path = os.path.join(arb_dir, f'app_localizations_{lang}.dart')
    with open(dart_path, 'r', encoding='utf-8') as f:
        dart_data = f.read()
        
    impls = []
    for full_literal, info in strings_to_translate.items():
        key = info['key']
        args = info['args']
        text = translations[lang][key]
        
        text = text.replace('\\', '\\\\').replace('$', '\\$').replace("'", "\\'").replace('\n', '\\n').replace('\r', '\\r')
        for a in args:
            text = text.replace(f"{{{a[0]}}}", f"${{{a[0]}}}")
            
        if args:
            args_decl = ", ".join([f"Object {a[0]}" for a in args])
            impls.append(f"  @override\n  String {key}({args_decl}) {{\n    return '{text}';\n  }}")
        else:
            impls.append(f"  @override\n  String get {key} => '{text}';")
            
    insert_pos = dart_data.rfind('}')
    dart_data = dart_data[:insert_pos] + "\n".join(impls) + "\n" + dart_data[insert_pos:]
    with open(dart_path, 'w', encoding='utf-8') as f:
        f.write(dart_data)

print("Done batch translating and updating!")
