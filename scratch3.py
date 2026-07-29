import os
import re

def find_chinese_strings(directory):
    pattern = re.compile(r'(["\'])(.*?[\u4e00-\u9fa5]+.*?)\1')
    interpolated = 0
    normal = 0
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.dart') and not file.startswith('app_localizations'):
                path = os.path.join(root, file)
                with open(path, 'r', encoding='utf-8') as f:
                    content = f.read()
                    matches = pattern.findall(content)
                    for m in matches:
                        s = m[1]
                        if '$' in s:
                            interpolated += 1
                        else:
                            normal += 1
    print(f"Normal: {normal}")
    print(f"Interpolated: {interpolated}")

find_chinese_strings('lib')
