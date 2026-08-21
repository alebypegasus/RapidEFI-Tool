import 'package:flutter_test/flutter_test.dart';
import 'package:rapidefi/utils/update/release_notes_translator.dart';

void main() {
  final chineseRegExp = RegExp(r'[\u4e00-\u9fff]');

  group('ReleaseNotesTranslator', () {
    test('translates v5.2.0 release notes without Chinese characters', () {
      const rawChinese520 = '''## 重要更新

1. 修复定制 SSDT 与预置 SSDT 重复写入的问题，自动移除同名 ACPI 项，避免生成重复 AML、配置冲突或 OpenCore 加载异常。
2. 重构睡眠与唤醒相关 SSDT 的处理逻辑。SSDT-LID、SSDT-FixShutdown、SSDT-WakeScreen 和 SSDT-LED 现在统一通过 SSDT-SleepHook 调度，减少 `_PTS`、`_WAK` 重命名补丁相互冲突的问题。
3. 改进 AMD 核显识别与 NootedRed 兼容性判断，并完善 Intel 核显 Codename 识别，降低核显被误判为独显或未知设备的情况。
4. 修复不同 macOS 版本下 Intel 核显背光启动参数的选择逻辑，自动处理 `-igfxblr` 与 `-igfxblt`，避免同时写入或使用不匹配的参数。
5. 修复 SD 读卡器信息无法正常识别和展示的问题，并优化硬件信息页面的 I/O 设备显示。
6. 修复部分仅生成定制 SSDT 的场景下 ACPI 输出目录不存在的问题，提高自动配置 EFI 和 SSDT 合并输出的稳定性。
7. Windows 发布包现已内置所需的 Microsoft Visual C++ 运行库 DLL，解决部分未安装 VC++ 运行环境的电脑无法启动 RapidEFI 的问题。
8. 修复 macOS 发布包错误跟随符号链接的问题，显著减小压缩包体积，同时保持应用程序 Framework 结构完整。
''';

      final translated = ReleaseNotesTranslator.translate(rawChinese520, tag: 'v5.2.0');
      expect(translated, isNotEmpty);
      expect(chineseRegExp.hasMatch(translated), isFalse,
          reason: 'Translated notes must not contain Chinese characters');
      expect(translated, contains('Important Updates'));
      expect(translated, contains('Custom SSDT Deduplication'));
      expect(translated, contains('SSDT-SleepHook'));
    });

    test('translates v5.1.0 release notes without Chinese characters', () {
      const rawChinese510 = '''### 新增功能
- 三级级联下拉：平台代数 → 品牌 → 主板型号
- assets/data/mbconfs.json 主板配置数据库
''';

      final translated = ReleaseNotesTranslator.translate(rawChinese510, tag: 'v5.1.0');
      expect(translated, isNotEmpty);
      expect(chineseRegExp.hasMatch(translated), isFalse);
      expect(translated, contains('Motherboard Database Integration'));
    });

    test('translates generic Chinese release text without Chinese characters', () {
      const rawGeneric = '''## 重要更新
- 修复核显驱动问题
- 优化主板配置
- 新增无线网卡驱动
''';

      final translated = ReleaseNotesTranslator.translate(rawGeneric);
      expect(translated, isNotEmpty);
      expect(chineseRegExp.hasMatch(translated), isFalse);
      expect(translated, contains('Important Updates'));
    });

    test('preserves English release notes intact', () {
      const englishNotes = '''## RapidEFI v5.2.0
- Added English translation
- Fixed bugs
''';

      final translated = ReleaseNotesTranslator.translate(englishNotes);
      expect(translated, englishNotes);
    });

    test('handles null and empty release notes gracefully', () {
      expect(ReleaseNotesTranslator.translate(null), 'No release notes provided.');
      expect(ReleaseNotesTranslator.translate(''), 'No release notes provided.');
      expect(ReleaseNotesTranslator.translate('   '), 'No release notes provided.');
    });
  });
}
