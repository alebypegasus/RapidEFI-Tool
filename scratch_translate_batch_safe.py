import os
import re
import json
from deep_translator import GoogleTranslator

base_dir = '.'
dart_files = []

excluded_files = [
    'hardware_page_controller.dart',
    'platform_entity.dart',
    'bluetooth_widget.dart',
    'brcm_wifi.dart',
    'wifi_card.dart',
    'uefi_widget.dart',
    'battery.dart',
    'laptop.dart',
    'laptop_other.dart',
    'sensor.dart',
    'touchpad.dart',
    'choice_list.dart',
    'custom_textfield.dart',
    'kext_choice_list.dart',
    'scrollable_choice_list_panel.dart',
]

for root, dirs, files in os.walk(os.path.join(base_dir, 'lib/pages')):
    for f in files:
        if f.endswith('.dart') and f not in excluded_files:
            dart_files.append(os.path.join(root, f))

# Also include widgets if any
for root, dirs, files in os.walk(os.path.join(base_dir, 'lib/widgets')):
    for f in files:
        if f.endswith('.dart') and f not in excluded_files:
            dart_files.append(os.path.join(root, f))

pattern = re.compile(
    r"'(?:[^'\n\\\$\{\}]|\\.)*[\u4e00-\u9fa5]+(?:[^'\n\\\$\{\}]|\\.)*'|"
    r'\"(?:[^\"\n\\\$\{\}]|\\.)*[\u4e00-\u9fa5]+(?:[^\"\n\\\$\{\}]|\\.)*\"'
)

def strip_quotes(s):
    return s[0], s[1:-1]

def escape_icu(text):
    text = text.replace("'", "''")
    return text

def batch_translate(texts, dest_lang):
    translator = GoogleTranslator(source='zh-CN', target=dest_lang)
    result = []
    batch_size = 50
    for i in range(0, len(texts), batch_size):
        batch = texts[i:i+batch_size]
        try:
            res = translator.translate_batch(batch)
            for j, r in enumerate(res):
                if r is None: r = batch[j]
                result.append(r)
        except Exception as e:
            print(f"Error in batch {i} for {dest_lang}: {e}")
            result.extend(batch)
    return result

strings_to_translate = {}
counter = 2000 # Use high counter to avoid collision with lib/utils

unique_literals = set()

for fpath in dart_files:
    with open(fpath, 'r', encoding='utf-8') as f:
        content = f.read()
    matches = pattern.findall(content)
    unique_literals.update(matches)

ordered_literals = list(unique_literals)
print(f"Found {len(ordered_literals)} unique strings without interpolations or braces.")

all_clean_texts = []
for full_literal in ordered_literals:
    quote, text = strip_quotes(full_literal)
    key = f"autoGen{counter}"
    counter += 1
    
    strings_to_translate[full_literal] = {
        'key': key,
        'clean_text': text
    }
    all_clean_texts.append(text)

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
        safe_text = escape_icu(text)
        arb_data[key] = safe_text
            
    with open(arb_path, 'w', encoding='utf-8') as f:
        json.dump(arb_data, f, ensure_ascii=False, indent=2)

print("Done batch translating and updating!")
