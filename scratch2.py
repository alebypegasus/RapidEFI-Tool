import os
import re

def find_chinese_strings(directory):
    pattern = re.compile(r'(["\'])(.*?[\u4e00-\u9fa5]+.*?)\1')
    results = {}
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.dart') and not file.startswith('app_localizations'):
                path = os.path.join(root, file)
                with open(path, 'r', encoding='utf-8') as f:
                    content = f.read()
                    matches = pattern.findall(content)
                    if matches:
                        results[path] = [m[1] for m in matches]
    return results

res = find_chinese_strings('lib')
total_strings = 0
for path, strings in res.items():
    print(f"{path}: {strings} strings")
    total_strings += strings
print(f"Total strings: {total_strings}")
print(f"Total files: {len(res)}")
