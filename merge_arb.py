import json

langs = ["zh", "en", "pt", "ja"]

for lang in langs:
    arb_file = f"lib/l10n/app_{lang}.arb"
    new_json = f"arb_{lang}_new.json"
    
    with open(arb_file, "r", encoding="utf-8") as f:
        existing = json.load(f)
        
    try:
        with open(new_json, "r", encoding="utf-8") as f:
            new_data = json.load(f)
    except FileNotFoundError:
        print(f"Skipping {lang}, file not found yet.")
        continue
        
    existing.update(new_data)
    
    with open(arb_file, "w", encoding="utf-8") as f:
        json.dump(existing, f, ensure_ascii=False, indent=2)

print("Merged all available.")
