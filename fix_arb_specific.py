import json
import os

keys_to_fix = [
    'ssdtLog009',
    'ssdtLog029',
    'ssdtLog052',
    'ssdtLog063',
    'ssdtLog070',
    'logMsg063',
    'logMsg333'
]

def fix_text(text):
    text = text.replace('${out[1]}', '[out1]')
    text = text.replace('$dev', '[dev]')
    text = text.replace('${t[\'find\']}', '[t_find]')
    text = text.replace('${imei.busPath}', '[imei.busPath]')
    text = text.replace('${systemStatesNotSupported.join(", ", "")}', '[systemStatesNotSupported]')
    text = text.replace('${systemStatesNotSupported.join(", "', '[systemStatesNotSupported]')
    text = text.replace('${systemStatesNotSupported.join(\\",\\",', '[systemStatesNotSupported]')
    text = text.replace('${systemStatesFound.join(\\",\\",', '[systemStatesFound]')
    text = text.replace('${ztts.first}', '[ztts.first]')
    # Clean up any leftover curly braces for these specific vars if they didn't match the long strings
    text = text.replace('${systemStatesNotSupported.join(",', '[systemStatesNotSupported]')
    text = text.replace('${systemStatesFound.join(",', '[systemStatesFound]')
    text = text.replace('${systemStatesFound.join(\\",\\"', '[systemStatesFound]')
    text = text.replace('${systemStatesNotSupported.join(\\",\\"', '[systemStatesNotSupported]')
    return text

for lang in ['en', 'pt', 'ja', 'zh']:
    path = f'lib/l10n/app_{lang}.arb'
    if os.path.exists(path):
        with open(path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        changed = False
        for k in keys_to_fix:
            if k in data:
                data[k] = fix_text(data[k])
                changed = True
        
        if changed:
            with open(path, 'w', encoding='utf-8') as f:
                json.dump(data, f, ensure_ascii=False, indent=2)
            print(f"Fixed {path}")
