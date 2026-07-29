import json
import urllib.request
import urllib.parse
import time

def translate(text, target_lang):
    if not text.strip(): return text
    # Very simple google translate hack (for script usage)
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

# Process English
arb_en = {}
for k, v in entries.items():
    print(f"Translating EN: {k}")
    translated = translate(v, "en")
    # Restore {argX} which google translate might mess up (e.g. {arg 0} or { arg0 })
    import re
    translated = re.sub(r'\{\s*arg\s*(\d+)\s*\}', r'{arg\1}', translated)
    arb_en[k] = translated
    if k in placeholders:
        arb_en[f"@{k}"] = placeholders[k]
    time.sleep(0.1)

with open("arb_en_new.json", "w", encoding="utf-8") as f:
    json.dump(arb_en, f, ensure_ascii=False, indent=2)

# Save Chinese with placeholders
arb_zh = {}
for k, v in entries.items():
    arb_zh[k] = v
    if k in placeholders:
        arb_zh[f"@{k}"] = placeholders[k]

with open("arb_zh_new.json", "w", encoding="utf-8") as f:
    json.dump(arb_zh, f, ensure_ascii=False, indent=2)

print("Finished English.")
