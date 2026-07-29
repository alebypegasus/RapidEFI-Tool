import os
import re

for root, _, files in os.walk('lib'):
    for f in files:
        if f.endswith('.dart'):
            path = os.path.join(root, f)
            with open(path, 'r', encoding='utf-8') as file:
                content = file.read()
            
            orig = content

            if 'l10nGlobal' in content:
                # Remove `const` before `{` or `[` or `Type` if it contains `l10nGlobal`.
                # Actually, in table.dart, we just replace `static const` with `static final`
                if f == 'table.dart':
                    content = content.replace('static const', 'static final')
                    content = content.replace('const [', '[')
                    content = content.replace('const {', '{')
                
                # Let's also check for any `const` that might contain l10nGlobal
                content = content.replace("const [", "[")
                content = content.replace("const {", "{")
                
                # In config_booter.dart, DropdownMenuEntry is instantiated with const
                if f == 'config_booter.dart' or f == 'config_misc.dart' or f == 'config_nvram.dart' or f == 'appleallc_catallog_loader.dart' or f == 'config_acpi.dart':
                    content = content.replace("const DropdownMenuEntry", "DropdownMenuEntry")
                    content = content.replace("const CatalogEntry", "CatalogEntry")
                    content = content.replace("const [", "[")

            if content != orig:
                with open(path, 'w', encoding='utf-8') as file:
                    file.write(content)

print("Fixed const errors!")
