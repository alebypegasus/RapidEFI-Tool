import os
import re
import json
import traceback
from deep_translator import GoogleTranslator

base_dir = '.'
dart_files = []
for root, dirs, files in os.walk(os.path.join(base_dir, 'lib')):
    for f in files:
        if f.endswith('.dart'):
            dart_files.append(os.path.join(root, f))

dart_files = [f for f in dart_files if 'lib/l10n/' not in f and 'flutter_picker/picker_localizations' not in f]

pattern = re.compile(r'(["\'])(.*?[\u4e00-\u9fa5]+.*?)\1', flags=re.DOTALL)
interpolation_pattern = re.compile(r'\$([a-zA-Z_][a-zA-Z0-9_]*)|(\$\{[^}]+\})')

strings_to_translate = {}
counter = 1

translations = {'en': {}, 'pt': {}, 'ja': {}, 'zh': {}}
translators = {
    'en': GoogleTranslator(source='zh-CN', target='en'),
    'pt': GoogleTranslator(source='zh-CN', target='pt'),
    'ja': GoogleTranslator(source='zh-CN', target='ja'),
}

for fpath in dart_files:
    with open(fpath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    matches = pattern.findall(content)
    if not matches: continue
    
    for quote, text in matches:
        full_literal = quote + text + quote
        if full_literal in strings_to_translate:
            continue
            
        key = f"autoGen{counter}"
        counter += 1
        
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
        
        zh_text = clean_text
        translations['zh'][key] = zh_text
        for lang in ['en', 'pt', 'ja']:
            try:
                safe_text = re.sub(r'\{([^}]+)\}', r'___\1___', zh_text)
                trans = translators[lang].translate(safe_text)
                trans = re.sub(r'___([a-zA-Z0-9_]+)___', r'{\1}', trans)
                translations[lang][key] = trans
            except Exception as e:
                translations[lang][key] = zh_text
                
        strings_to_translate[full_literal] = {
            'key': key,
            'args': args
        }

print(f"Found {len(strings_to_translate)} unique strings.")

for fpath in dart_files:
    with open(fpath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    new_content = content
    modified = False
    
    for full_literal, info in strings_to_translate.items():
        if full_literal in new_content:
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
        args = None
        for literal, info in strings_to_translate.items():
            if info['key'] == key:
                args = info['args']
                break
        if args:
            arb_data[f"@{key}"] = {"placeholders": {a[0]: {} for a in args}}
            
    with open(arb_path, 'w', encoding='utf-8') as f:
        json.dump(arb_data, f, ensure_ascii=False, indent=2)

with open('lib/l10n/app_localizations.dart', 'r', encoding='utf-8') as f:
    app_loc = f.read()

getters = []
for literal, info in strings_to_translate.items():
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
    for literal, info in strings_to_translate.items():
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

print("Done translating and updating!")
