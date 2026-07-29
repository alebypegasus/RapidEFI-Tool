import re
import json

def escape_icu(text):
    args = {}
    
    # Hide placeholders
    def hide(match):
        ph = match.group(0)
        idx = len(args)
        key = f"___PLACEHOLDER_{idx}___"
        args[key] = ph
        return key
        
    text = re.sub(r'\{arg\d+\}', hide, text)
    
    # Escape single quotes
    text = text.replace("'", "''")
    # Escape curly braces
    text = text.replace("{", "'{'").replace("}", "'}'")
    
    # Restore placeholders
    for k, v in args.items():
        text = text.replace(k, v)
        
    return text

for lang in ['en', 'pt', 'ja', 'zh']:
    path = f'lib/l10n/app_{lang}.arb'
    with open(path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    for k, v in data.items():
        if not k.startswith('@'):
            data[k] = escape_icu(v)
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=2)
        
print("ARB files fixed!")
