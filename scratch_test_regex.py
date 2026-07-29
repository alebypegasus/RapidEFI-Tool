import re

content = """
String a = '你好$world';
String b = "世界${var}";
String c = '''
多行
文本
''';
"""

# Regex that matches single and double quotes, and triple quotes.
pattern = re.compile(
    r"'''(?:[^'\\]|\\.)*[\u4e00-\u9fa5]+(?:[^'\\]|\\.)*'''|"
    r'\"\"\"(?:[^\"\\]|\\.)*[\u4e00-\u9fa5]+(?:[^\"\\]|\\.)*\"\"\"|'
    r"'(?:[^'\n\\]|\\.)*[\u4e00-\u9fa5]+(?:[^'\n\\]|\\.)*'|"
    r'\"(?:[^\"\n\\]|\\.)*[\u4e00-\u9fa5]+(?:[^\"\n\\]|\\.)*\"'
)

matches = pattern.findall(content)
for m in matches:
    print(m)

# Since we used | (OR), the matches will just be strings if we don't use groups.
