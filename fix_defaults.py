import re
import os

def fix_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    orig = content

    # Fix const declarations
    content = content.replace('static const String _idleStatus', 'static final String _idleStatus')
    content = content.replace('static const String _loadingStatus', 'static final String _loadingStatus')
    content = content.replace('static const String _refreshStatus', 'static final String _refreshStatus')
    content = content.replace('static const String _completeStatus', 'static final String _completeStatus')
    content = content.replace('static const String _failedStatus', 'static final String _failedStatus')
    content = content.replace('static const String _unsupportedStatus', 'static final String _unsupportedStatus')
    content = content.replace('static const String _importedStatus', 'static final String _importedStatus')

    # Remove const from constructors of PlatformEntity, etc
    content = content.replace('const PlatformEntity({', 'PlatformEntity({')
    content = content.replace('const PlatformConfig({', 'PlatformConfig({')
    content = content.replace('const CpuArchitecture({', 'CpuArchitecture({')

    # Fix default arguments in constructors: this.title = l10nGlobal.autoGen123
    # We will replace them with `this.title` and rely on null checks, or just remove the default if it's not strictly required.
    # Actually, the easiest way for `this.title = l10nGlobal.autoGenXXX` is to replace it with `this.title`
    # But wait, if the field is not nullable (e.g. `final String title;`), removing the default will cause "must be initialized" error.
    # Let's check `choice_list.dart`.

    if content != orig:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)

for root, _, files in os.walk('lib'):
    for f in files:
        if f.endswith('.dart'):
            fix_file(os.path.join(root, f))
