import json
import urllib.request
import urllib.parse
import time
import re

def translate(text, target_lang):
    if not text.strip(): return text
    url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=zh-CN&tl=" + target_lang + "&dt=t&q=" + urllib.parse.quote(text)
    try:
        req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
        response = urllib.request.urlopen(req)
        data = json.loads(response.read().decode('utf-8'))
        return "".join([x[0] for x in data[0] if x[0]])
    except Exception as e:
        print("Error translating:", e)
        return text

with open("arb_entries_zh.json", "r", encoding="utf-8") as f:
    data = json.load(f)

entries = data["entries"]
placeholders = data["placeholders"]

for lang in ["pt", "ja"]:
    print(f"Starting {lang}...")
    arb_out = {}
    for k, v in entries.items():
        translated = translate(v, lang)
        translated = re.sub(r'\{\s*arg\s*(\d+)\s*\}', r'{arg\1}', translated)
        arb_out[k] = translated
        if k in placeholders:
            arb_out[f"@{k}"] = placeholders[k]
        time.sleep(0.05)
    
    with open(f"arb_{lang}_new.json", "w", encoding="utf-8") as f:
        json.dump(arb_out, f, ensure_ascii=False, indent=2)

print("Finished pt and ja.")
