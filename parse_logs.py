import re
import json

with open("lib/utils/ssdttool/ssdt.dart", "r", encoding="utf-8") as f:
    content = f.read()

pattern = re.compile(r'Log\.(warning|info|error)\(\s*(["\'])(.*?)\2\s*\)')
matches = pattern.finditer(content)

arb_zh = {}
arb_en = {}
arb_pt = {}
arb_ja = {}

replacements = []
idx = 1

for match in matches:
    full_match = match.group(0)
    log_type = match.group(1)
    quote = match.group(2)
    text = match.group(3)
    
    # Check if there is any Chinese character
    if not re.search(r'[\u4e00-\u9fff]', text):
        continue
        
    key = f"ssdtLog{idx:03d}"
    arb_zh[key] = text
    
    # We will just print these out and translate them manually or via another script
    # For now, let's just create the replacements
    replacement = f"Log.{log_type}(l10nGlobal.{key})"
    replacements.append((full_match, replacement))
    idx += 1

# Apply replacements
for old, new in replacements:
    content = content.replace(old, new)

with open("ssdt_updated.dart", "w", encoding="utf-8") as f:
    f.write(content)

with open("arb_zh_new.json", "w", encoding="utf-8") as f:
    json.dump(arb_zh, f, ensure_ascii=False, indent=2)

print(f"Replaced {len(replacements)} occurrences.")
