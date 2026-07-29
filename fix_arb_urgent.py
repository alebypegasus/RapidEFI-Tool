import json

with open("arb_zh_new.json", "r", encoding="utf-8") as f:
    new_data = json.load(f)

langs = ["zh", "en", "pt", "ja"]
for lang in langs:
    arb_file = f"lib/l10n/app_{lang}.arb"
    with open(arb_file, "r", encoding="utf-8") as f:
        existing = json.load(f)
        
    for k, v in new_data.items():
        if k not in existing:
            existing[k] = v
            
    with open(arb_file, "w", encoding="utf-8") as f:
        json.dump(existing, f, ensure_ascii=False, indent=2)

print("Injected into all arbs.")
