import re
import json

files_to_process = [
    "lib/utils/ssdttool/ssdt.dart",
    "lib/pages/hardware/hardware_page_controller.dart",
    "lib/utils/log/log.dart",
    "lib/utils/file_util.dart",
]

arb_entries = {}
arb_placeholders = {}

idx = 1

def process_match(match):
    global idx
    full_match = match.group(0)
    log_type = match.group(1)
    quote = match.group(2)
    text = match.group(3)

    if not re.search(r'[\u4e00-\u9fff]', text):
        return full_match

    # Find Dart variables: $var or ${var}
    # regex for $var or ${var}
    var_pattern = re.compile(r'\$([a-zA-Z_]\w*)|\$\{([^}]+)\}')
    
    args = []
    
    def replacer(m):
        var_name = m.group(1) if m.group(1) else m.group(2)
        arg_name = f"arg{len(args)}"
        args.append((arg_name, var_name))
        return f"{{{arg_name}}}"
        
    arb_text = var_pattern.sub(replacer, text)
    
    key = f"logMsg{idx:03d}"
    idx += 1
    
    arb_entries[key] = arb_text
    if args:
        arb_placeholders[key] = {
            "placeholders": {
                arg_name: {"type": "String"} for arg_name, _ in args
            }
        }
    
    # Generate Dart replacement
    arg_list = ", ".join([f"{var_name}.toString()" for _, var_name in args])
    
    if arg_list:
        replacement = f"Log.{log_type}(l10nGlobal.{key}({arg_list}))"
    else:
        replacement = f"Log.{log_type}(l10nGlobal.{key})"
        
    return replacement

for filepath in files_to_process:
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()

    # match Log.warning("...") or Log.info('...') or Log.error(...)
    pattern = re.compile(r'Log\.(warning|info|error|debug)\(\s*(["\'])(.*?)\2\s*\)')
    
    # Also handle Log('...') which is Log.info under the hood in some custom classes if any?
    # Wait, in file_util.dart it's Log('...'); let's check
    # In utils/asset_util.dart it's Log('...'); but we only included file_util.dart which uses Log.error
    
    new_content = pattern.sub(process_match, content)
    
    # Handle Log('...')
    pattern2 = re.compile(r'(?<!\.)Log\(\s*(["\'])(.*?)\1\s*\)')
    def process_match_default(match):
        global idx
        full_match = match.group(0)
        quote = match.group(1)
        text = match.group(2)
        if not re.search(r'[\u4e00-\u9fff]', text):
            return full_match
            
        var_pattern = re.compile(r'\$([a-zA-Z_]\w*)|\$\{([^}]+)\}')
        args = []
        def replacer(m):
            var_name = m.group(1) if m.group(1) else m.group(2)
            arg_name = f"arg{len(args)}"
            args.append((arg_name, var_name))
            return f"{{{arg_name}}}"
        arb_text = var_pattern.sub(replacer, text)
        key = f"logMsg{idx:03d}"
        idx += 1
        arb_entries[key] = arb_text
        if args:
            arb_placeholders[key] = {"placeholders": {arg_name: {"type": "String"} for arg_name, _ in args}}
        arg_list = ", ".join([f"{var_name}.toString()" for _, var_name in args])
        if arg_list:
            return f"Log(l10nGlobal.{key}({arg_list}))"
        else:
            return f"Log(l10nGlobal.{key})"
            
    new_content = pattern2.sub(process_match_default, new_content)

    with open(filepath, "w", encoding="utf-8") as f:
        f.write(new_content)

with open("arb_entries_zh.json", "w", encoding="utf-8") as f:
    json.dump({"entries": arb_entries, "placeholders": arb_placeholders}, f, ensure_ascii=False, indent=2)

print(f"Processed {idx-1} entries.")
