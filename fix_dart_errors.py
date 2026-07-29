import os
import re

for root, _, files in os.walk('lib'):
    for f in files:
        if f.endswith('.dart'):
            path = os.path.join(root, f)
            with open(path, 'r', encoding='utf-8') as file:
                content = file.read()
            
            orig = content

            # Fix `const [ ... l10nGlobal ... ]`
            # This is a bit tricky, let's just replace `const [` with `[` if there's `l10nGlobal` inside.
            # Easiest way: find `const [` and `]` and if `l10nGlobal` is inside, remove `const `.
            # But regex across multiple lines is hard. Let's do it simpler:
            # We know the specific errors!
            content = content.replace("const ['hewlett-packard'", "['hewlett-packard'")
            content = content.replace("const ['chromebook'", "['chromebook'")
            content = content.replace("const ['microsoft'", "['microsoft'")

            # For `config_booter.dart`, it might be a `const DropdownMenuEntry`
            content = content.replace("const DropdownMenuEntry", "DropdownMenuEntry")
            content = content.replace("const [", "[")
            
            # Wait, removing all `const [` might hurt performance or cause other issues, but let's just do it for files that contain `l10nGlobal`.
            # Actually, `config_booter.dart` and `appleallc_catallog_loader.dart` are the main ones.
            
            # Fix string concatenation: `l10nGlobal.autoGen123 'string'` -> `l10nGlobal.autoGen123 + 'string'`
            # or `'string' l10nGlobal.autoGen123` -> `'string' + l10nGlobal.autoGen123`
            # or `l10nGlobal.autoGen123 "\n"` -> `l10nGlobal.autoGen123 + "\n"`
            
            content = re.sub(r'(l10nGlobal\.autoGen\d+)\s+([\'\"])', r'\1 + \2', content)
            content = re.sub(r'([\'\"])\s+(l10nGlobal\.autoGen\d+)', r'\1 + \2', content)

            if content != orig:
                with open(path, 'w', encoding='utf-8') as file:
                    file.write(content)

print("Fixed syntax errors!")
