//  hackintosh_details_translator.dart
//  RapidEFI Multi-Language Details Translation Layer
//

class HackintoshDetailsTranslator {
  const HackintoshDetailsTranslator._();

  /// Translates a list of CPU/Platform notes to the user's active language.
  static List<String> translateNotes(List<String> notes, String langCode) {
    if (notes.isEmpty) return const [];
    final code = _normalizeLangCode(langCode);
    if (code == 'en') return notes;

    return notes.map((note) => translateNote(note, code)).toList();
  }

  /// Translates a single CPU/Platform note string.
  static String translateNote(String note, String langCode) {
    final code = _normalizeLangCode(langCode);
    if (code == 'en') return note;

    final trimmed = note.trim();
    final dict = _notesTranslations[code];
    if (dict != null && dict.containsKey(trimmed)) {
      return dict[trimmed]!;
    }

    return _translateNoteGeneric(trimmed, code);
  }

  /// Translates a list of BIOS options (enable / disable / custom).
  static List<String> translateBiosList(List<String> items, String langCode) {
    if (items.isEmpty) return const [];
    final code = _normalizeLangCode(langCode);
    if (code == 'en') return items;

    return items.map((item) => translateBiosOption(item, code)).toList();
  }

  /// Translates a single BIOS option string.
  static String translateBiosOption(String item, String langCode) {
    final code = _normalizeLangCode(langCode);
    if (code == 'en') return item;

    final trimmed = item.trim();
    final dict = _biosTranslations[code];
    if (dict != null && dict.containsKey(trimmed)) {
      return dict[trimmed]!;
    }

    return _translateBiosGeneric(trimmed, code);
  }

  /// Translates SMBIOS support description.
  static String translateSmbiosDescription(
    String smbiosModel,
    String langCode, {
    ({int min, int max})? fallbackRange,
  }) {
    final code = _normalizeLangCode(langCode);
    final dict = _smbiosDescriptions[code];
    if (dict != null && dict.containsKey(smbiosModel)) {
      return dict[smbiosModel]!;
    }
    final enDict = _smbiosDescriptions['en'];
    if (enDict != null && enDict.containsKey(smbiosModel)) {
      if (code == 'en') return enDict[smbiosModel]!;
      return _translateSmbiosGeneric(enDict[smbiosModel]!, code);
    }

    if (fallbackRange != null) {
      return _formatFallbackRange(fallbackRange.min, fallbackRange.max, code);
    }

    return _notConfiguredText(code);
  }

  /// Backward-compatibility snippet translation.
  static String translateOsVersionSnippet(String langCode) {
    final code = _normalizeLangCode(langCode);
    return switch (code) {
      'pt' =>
        'A EFI gerada para a versão selecionada do macOS é compatível com versões anteriores. Por exemplo, selecionar Tahoe 26 também inicializará Sequoia 15 e versões anteriores.\n\nNota: A EFI gerada foi testada desde o macOS El Capitan 10.11.x até o macOS Tahoe 26.x.',
      'zh' =>
        '为所选 macOS 版本生成的 EFI 向下兼容。例如，选择 Tahoe 26 同样可以引导 Sequoia 15 及更早版本。\n\n注意：生成的 EFI 已在 macOS El Capitan 10.11.x 至 macOS Tahoe 26.x 上测试通过。',
      'es' =>
        'El EFI generado para la versión seleccionada de macOS es compatible con versiones anteriores. Por ejemplo, seleccionar Tahoe 26 también arrancará Sequoia 15 y versiones anteriores.\n\nNota: El EFI generado ha sido probado desde macOS El Capitan 10.11.x hasta macOS Tahoe 26.x.',
      'fr' =>
        'L\'EFI générée pour la version de macOS sélectionnée est rétrocompatible. Par exemple, sélectionner Tahoe 26 permettra également de démarrer Sequoia 15 et les versions antérieures.\n\nRemarque : L\'EFI générée a été testée de macOS El Capitan 10.11.x à macOS Tahoe 26.x.',
      'de' =>
        'Das für die ausgewählte macOS-Version generierte EFI ist abwärtskompatibel. Die Auswahl von Tahoe 26 startet beispielsweise auch Sequoia 15 und frühere Versionen.\n\nHinweis: Das generierte EFI wurde von macOS El Capitan 10.11.x bis macOS Tahoe 26.x getestet.',
      'it' =>
        'L\'EFI generato per la versione di macOS selezionata è retrocompatibile. Ad esempio, selezionando Tahoe 26 si avvierà anche Sequoia 15 e versioni precedenti.\n\nNota: L\'EFI generato è stato testato da macOS El Capitan 10.11.x a macOS Tahoe 26.x.',
      'ru' =>
        'EFI, созданный для выбранной версии macOS, обратно совместим. Например, выбор Tahoe 26 также загрузит Sequoia 15 и более ранние версии.\n\nПримечание: Созданный EFI протестирован от macOS El Capitan 10.11.x до macOS Tahoe 26.x.',
      'ja' =>
        '選択した macOS バージョン用に生成された EFI は下位互換性があります。たとえば、Tahoe 26 を選択すると Sequoia 15 やそれ以前のバージョンも起動できます。\n\n注：生成された EFI は macOS El Capitan 10.11.x から macOS Tahoe 26.x までテスト済みです。',
      'ko' =>
        '선택한 macOS 버전용으로 생성된 EFI는 이전 버전과 호환됩니다. 예를 들어 Tahoe 26을 선택하면 Sequoia 15 및 이전 버전도 부팅할 수 있습니다.\n\n참고: 생성된 EFI는 macOS El Capitan 10.11.x부터 macOS Tahoe 26.x까지 테스트되었습니다.',
      _ =>
        'The EFI generated for the selected macOS version is backward-compatible. For example, selecting Tahoe 26 will also boot Sequoia 15 and earlier versions.\n\nNote: The generated EFI has been tested from macOS El Capitan 10.11.x through macOS Tahoe 26.x.',
    };
  }

  static String _normalizeLangCode(String langCode) {
    final lower = langCode.toLowerCase().split('_')[0].split('-')[0];
    return lower;
  }

  static String _formatFallbackRange(int min, int max, String code) {
    return switch (code) {
      'pt' => 'Compatível com Darwin $min ~ $max',
      'zh' => '支持 Darwin $min ~ $max',
      'es' => 'Soporta Darwin $min ~ $max',
      'fr' => 'Prend en charge Darwin $min ~ $max',
      'de' => 'Unterstützt Darwin $min ~ $max',
      'it' => 'Supporta Darwin $min ~ $max',
      'ru' => 'Поддерживает Darwin $min ~ $max',
      'ja' => 'Darwin $min ~ $max に対応',
      'ko' => 'Darwin $min ~ $max 지원',
      _ => 'Supports Darwin $min ~ $max',
    };
  }

  static String _notConfiguredText(String code) {
    return switch (code) {
      'pt' => 'Faixa de compatibilidade do macOS não configurada',
      'zh' => '未配置 macOS 兼容范围',
      'es' => 'Rango de compatibilidad de macOS no configurado',
      'fr' => 'Plage de compatibilité macOS non configurée',
      'de' => 'macOS-Kompatibilitätsbereich nicht konfiguriert',
      'it' => 'Intervallo di compatibilità macOS non configurato',
      'ru' => 'Диапазон совместимости с macOS не настроен',
      'ja' => 'macOS 互換範囲が設定されていません',
      'ko' => 'macOS 호환 범위가 구성되지 않았습니다',
      _ => 'macOS compatibility range not configured',
    };
  }

  static String _translateNoteGeneric(String text, String code) {
    var res = text;
    if (code == 'pt') {
      res = res
          .replaceAll("'Native Support' indicates native GPU support without patches (except pre-1st Gen where onboard GMA is limited to OS X 10.7). 'Patch Support' indicates hardware requires OCLP root patches.",
              "'Suporte Nativo' indica suporte nativo de GPU sem patches (exceto pré-1ª Geração onde a GMA integrada é limitada ao OS X 10.7). 'Suporte via Patch' indica que o hardware requer patches de raiz do OCLP.")
          .replaceAll("'Native Support' indicates native GPU support. 'Patch Support' indicates hardware requires OCLP root patches.",
              "'Suporte Nativo' indica suporte nativo de GPU. 'Suporte via Patch' indica que o hardware requer patches de raiz do OCLP.")
          .replaceAll("was first released in", "foi lançado pela primeira vez em")
          .replaceAll("was released in", "foi lançado em")
          .replaceAll("integrated graphics", "gráficos integrados")
          .replaceAll("natively supported up to", "suportado nativamente até")
          .replaceAll("patchable up to", "com suporte a patch até")
          .replaceAll("patchable via OCLP", "suportado via OCLP")
          .replaceAll("fully support native UEFI", "suportam totalmente UEFI nativo")
          .replaceAll("motherboards fully support native UEFI", "suportam totalmente UEFI nativo")
          .replaceAll("lack native UEFI and require emulated UEFI", "não possuem UEFI nativo e requerem UEFI emulado")
          .replaceAll("lack native UEFI and require OpenCore Duet/emulated UEFI", "não possuem suporte a UEFI e requerem OpenCore Duet/UEFI emulado")
          .replaceAll("Requires a supported discrete GPU", "Requer uma GPU dedicada compatível")
          .replaceAll("Integrated UHD 730/750 graphics are unsupported; a supported discrete GPU (AMD Polaris/Navi) is required.",
              "Gráficos integrados UHD 730/750 não são suportados; é necessária uma GPU dedicada compatível (AMD Polaris/Navi).")
          .replaceAll("Integrated Iris Xe graphics are unsupported.", "Gráficos integrados Iris Xe não são suportados.");
    }
    return res;
  }

  static String _translateBiosGeneric(String text, String code) {
    if (code == 'pt') {
      if (text.contains('CFG Lock')) {
        return "CFG Lock (Proteção MSR 0xE2) (Deve estar desativado. Se não encontrar a opção, ative AppleCpuPmCfgLock / AppleXcpmCfgLock em Kernel -> Quirks. O sistema não inicializará com CFG-Lock ativado)";
      }
      if (text.contains('Above 4G')) {
        return "Decodificação Acima de 4G (Above 4G Decoding) (Recomendado ativado)";
      }
      if (text.contains('VT-d')) {
        return "VT-d (pode ser ativado se definir DisableIoMapper para YES)";
      }
      if (text.contains('CSM')) {
        return "Módulo de Compatibilidade (CSM) (Deve estar desativado; erros e travamentos de GPU são comuns se ativado)";
      }
    }
    return text;
  }

  static String _translateSmbiosGeneric(String text, String code) {
    if (code == 'pt') {
      return text
          .replaceAll('Supports', 'Compatível com')
          .replaceAll('suitable for', 'adequado para')
          .replaceAll('architecture', 'arquitetura')
          .replaceAll('models', 'modelos')
          .replaceAll('processors with iGPU', 'processadores com iGPU')
          .replaceAll('and higher', 'e superiores')
          .replaceAll('and lower', 'e inferiores');
    }
    return text;
  }

  static const Map<String, Map<String, String>> _notesTranslations = {
    'pt': {
      'Bulldozer desktop CPUs include AMD Athlon X4 760K, A8-5600K, FX-4300, FX-6300, FX-8150, FX-8350.': 'Os processadores de desktop Bulldozer incluem AMD Athlon X4 760K, A8-5600K, FX-4300, FX-6300, FX-8150, FX-8350.',
      'Jaguar mobile CPUs include A4-5000, A6-5200, A8-6410, A10-5745M.': 'Os processadores móveis Jaguar incluem A4-5000, A6-5200, A8-6410, A10-5745M.',
      'AMD Bulldozer architecture was released in 2011 on 32nm, used for desktop and server processors.': 'A arquitetura AMD Bulldozer foi lançada em 2011 em 32nm, usada para processadores de desktop e servidor.',
      'AMD Jaguar architecture was released in 2013 on 28nm technology.': 'A arquitetura AMD Jaguar foi lançada em 2013 na tecnologia de 28nm.',
      'Ryzen 2000-5000 series APUs use NootedRed driver, supporting Metal acceleration but without VDA hardware decoding.': 'As APUs da série Ryzen 2000-5000 usam o driver NootedRed, com suporte à aceleração Metal, mas sem decodificação de hardware VDA.',
      'NootedRed supports the entire Vega Raven ASIC family (from Ryzen 1000/Athlon series up to Ryzen 5000 and 7x30 series).': 'O NootedRed suporta toda a família Vega Raven ASIC (desde as séries Ryzen 1000/Athlon até Ryzen 5000 e 7x30).',
      'Supports macOS Catalina 10.15 through macOS Tahoe 26. Recommend newer point releases (e.g. Big Sur 11.6 vs 11.0).': 'Suporta macOS Catalina 10.15 até macOS Tahoe 26. Recomenda-se versões secundárias mais recentes (ex: Big Sur 11.6 em vez de 11.0).',
      'Ryzen 2000-5000 APUs can reduce OpenGL rendering overhead in Chromium browsers.': 'As APUs Ryzen 2000-5000 podem reduzir a sobrecarga de renderização OpenGL em navegadores Chromium.',
      'Recommend allocating 2GB+ VRAM for AMD APU graphics in BIOS settings.': 'Recomenda-se alocar 2GB+ de VRAM para gráficos de APU AMD nas configurações da BIOS.',
      'Penryn was first released in 2007 on a 45nm process in Intel\'s Core 2 series.': 'Penryn foi lançado pela primeira vez em 2007 em um processo de 45nm na série Core 2 da Intel.',
      'Penryn was first released in 2007 on a 45nm process, succeeding Conroe in Intel\'s Core 2 series.': 'Penryn foi lançado pela primeira vez em 2007 em 45nm, sucedendo Conroe na série Intel Core 2.',
      '\'Native Support\' indicates native GPU support without patches (except pre-1st Gen where onboard GMA is limited to OS X 10.7). \'Patch Support\' indicates hardware requires OCLP root patches.': '\'Suporte Nativo\' indica suporte nativo de GPU sem patches (exceto pré-1ª Geração onde a GMA integrada é limitada ao OS X 10.7). \'Suporte via Patch\' indica que o hardware requer patches de raiz do OCLP.',
      '\'Native Support\' indicates native GPU support. \'Patch Support\' indicates hardware requires OCLP root patches.': '\'Suporte Nativo\' indica suporte nativo de GPU. \'Suporte via Patch\' indica que o hardware requer patches de raiz do OCLP.',
      'CPUs with SSE4.1 can be patched up to macOS Tahoe 26; otherwise limited to macOS 10.11.6.': 'CPUs com SSE4.1 podem receber patch até o macOS Tahoe 26; caso contrário, são limitadas ao macOS 10.11.6.',
      'CPUs supporting SSE4.1 (e.g. Core 2 Duo P8700, T9600) can be patched up to macOS Sequoia 15; otherwise limited to macOS 10.11.6.': 'CPUs com suporte a SSE4.1 (ex: Core 2 Duo P8700, T9600) podem receber patch até o macOS Sequoia 15; caso contrário, são limitadas ao macOS 10.11.6.',
      'On legacy laptops, integrated GMA graphics are unsupported; only laptops with supported discrete GPUs are viable.': 'Em notebooks legados, gráficos GMA integrados não são suportados; apenas notebooks com GPUs dedicadas compatíveis são viáveis.',
      'SSE4.1 is required for macOS 10.12 Sierra and newer; processors lacking SSE4.1 (e.g. Conroe) cannot boot newer macOS versions.': 'SSE4.1 é obrigatório para macOS 10.12 Sierra e mais recentes; processadores sem SSE4.1 (ex: Conroe) não podem inicializar versões recentes do macOS.',
      'Apple removed USB 1.1 controller drivers in macOS Ventura 13+. Use a PCIe-to-USB 3.0 card during installation, then apply OCLP USB 1.1 root patches.': 'A Apple removeu drivers de controladores USB 1.1 no macOS Ventura 13+. Use uma placa PCIe-USB 3.0 durante a instalação e aplique os patches de raiz USB 1.1 do OCLP.',
      'Most LGA775 motherboards lack UEFI support and require OpenCore Duet/emulated UEFI.': 'A maioria das placas-mãe LGA775 não possui suporte a UEFI e requer OpenCore Duet/UEFI emulado.',
      'Most PM45 / GM45 motherboards lack native UEFI and require emulated UEFI.': 'A maioria das placas-mãe PM45 / GM45 não possui UEFI nativo e requer UEFI emulado.',
      'Clarksfield was released in 2009 on 45nm Nehalem, 1st Gen Core i5/i7 without integrated graphics.': 'Clarksfield foi lançado em 2009 em 45nm Nehalem, 1ª Geração Core i5/i7 sem gráficos integrados.',
      'Lynnfield was released in 2009 on 45nm Nehalem (Core i5/i7, no iGPU). Clarkdale was released in 2010 on 32nm Nehalem (Core i3).': 'Lynnfield foi lançado em 2009 em 45nm Nehalem (Core i5/i7, sem iGPU). Clarkdale foi lançado em 2010 em 32nm Nehalem (Core i3).',
      'Arrandale was released in 2010 on 32nm Nehalem, 1st Gen Core i3 with integrated graphics supported natively up to macOS 10.13. Patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Arrandale foi lançado em 2010 em 32nm Nehalem, 1ª Geração Core i3 com gráficos integrados suportados nativamente até o macOS 10.13. Suporta patch até macOS Sequoia 15 via OCLP 2.0.1+.',
      'Most Clarksfield and Arrandale motherboards lack native UEFI and require emulated UEFI.': 'A maioria das placas-mãe Clarksfield e Arrandale não possui UEFI nativo e requer UEFI emulado.',
      'Sandy Bridge was released in 2011 on 32nm, 2nd Gen Core series with HD 3000 integrated graphics.': 'Sandy Bridge foi lançado em 2011 em 32nm, 2ª Geração da série Core com gráficos integrados HD 3000.',
      'Sandy Bridge HD 3000 graphics are natively supported up to macOS 10.13, patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Gráficos Sandy Bridge HD 3000 são suportados nativamente até o macOS 10.13, com patch até macOS Sequoia 15 via OCLP 2.0.1+.',
      'Sandy Bridge HD 3000 graphics are natively supported up to macOS 10.13.6 High Sierra, patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Gráficos Sandy Bridge HD 3000 são suportados nativamente até o macOS 10.13.6 High Sierra, com patch até macOS Sequoia 15 via OCLP 2.0.1+.',
      'Most Sandy Bridge 6-series mobile boards (e.g. HM65) lack native UEFI and require emulated UEFI.': 'A maioria das placas móveis da série 6 Sandy Bridge (ex: HM65) não possui UEFI nativo e requer UEFI emulado.',
      'Ivy Bridge was released in 2012 on 22nm, 3rd Gen Core series with HD 4000 integrated graphics.': 'Ivy Bridge foi lançado em 2012 em 22nm, 3ª Geração da série Core com gráficos integrados HD 4000.',
      'Ivy Bridge HD 4000 graphics are natively supported up to macOS 11 Big Sur, patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Gráficos Ivy Bridge HD 4000 são suportados nativamente até o macOS 11 Big Sur, com patch até macOS Sequoia 15 via OCLP 2.0.1+.',
      'Ivy Bridge 7-series boards (e.g. B75) fully support native UEFI.': 'Placas-mãe Ivy Bridge da série 7 (ex: B75) suportam totalmente UEFI nativo.',
      'Ivy Bridge motherboards fully support native UEFI.': 'Placas-mãe Ivy Bridge suportam totalmente UEFI nativo.',
      'Haswell was released in 2013 on 22nm, 4th Gen Core series with HD 4400 / HD 4600 integrated graphics.': 'Haswell foi lançado em 2013 em 22nm, 4ª Geração da série Core com gráficos integrados HD 4400 / HD 4600.',
      'Haswell HD 4600 graphics are natively supported up to macOS 12 Monterey, patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Gráficos Haswell HD 4600 são suportados nativamente até o macOS 12 Monterey, com patch até macOS Sequoia 15 via OCLP 2.0.1+.',
      'Broadwell was released in 2014 on 14nm, 5th Gen Core series with HD 5500 / HD 6000 graphics.': 'Broadwell foi lançado em 2014 em 14nm, 5ª Geração da série Core com gráficos HD 5500 / HD 6000.',
      'Broadwell was released in 2014 on 14nm, 5th Gen Core series with Iris Pro 6200 graphics.': 'Broadwell foi lançado em 2014 em 14nm, 5ª Geração da série Core com gráficos Iris Pro 6200.',
      'Broadwell HD 5500 graphics are natively supported up to macOS 12 Monterey and patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Gráficos Broadwell HD 5500 são suportados nativamente até o macOS 12 Monterey e suportam patch até macOS Sequoia 15 via OCLP 2.0.1+.',
      'Broadwell Iris Pro 6200 graphics are natively supported up to macOS 12 Monterey, patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Gráficos Broadwell Iris Pro 6200 são suportados nativamente até o macOS 12 Monterey, com patch até macOS Sequoia 15 via OCLP 2.0.1+.',
      'Skylake was released in 2015 on 14nm, 6th Gen Core series with HD 520 / HD 530 integrated graphics.': 'Skylake foi lançado em 2015 em 14nm, 6ª Geração da série Core com gráficos integrados HD 520 / HD 530.',
      'Skylake was released in 2015 on 14nm, 6th Gen Core series with HD 530 integrated graphics.': 'Skylake foi lançado em 2015 em 14nm, 6ª Geração da série Core com gráficos integrados HD 530.',
      'Skylake HD 520 graphics are natively supported up to macOS 12 Monterey; spoof as HD 620/630 for macOS Tahoe 26.': 'Gráficos Skylake HD 520 são suportados nativamente até o macOS 12 Monterey; faça spoof como HD 620/630 para macOS Tahoe 26.',
      'Skylake HD 530 graphics are natively supported up to macOS 12 Monterey; spoof as HD 630 for macOS Tahoe 26.': 'Gráficos Skylake HD 530 são suportados nativamente até o macOS 12 Monterey; faça spoof como HD 630 para macOS Tahoe 26.',
      'Kaby Lake was released in 2016 on 14nm, 7th Gen Core series with HD 620 / HD 630 integrated graphics.': 'Kaby Lake foi lançado em 2016 em 14nm, 7ª Geração da série Core com gráficos integrados HD 620 / HD 630.',
      'Kaby Lake was released in 2016 on 14nm, 7th Gen Core series with HD 630 integrated graphics.': 'Kaby Lake foi lançado em 2016 em 14nm, 7ª Geração da série Core com gráficos integrados HD 630.',
      'Kaby Lake HD 620 graphics are natively supported up to macOS Tahoe 26.': 'Gráficos Kaby Lake HD 620 são suportados nativamente até o macOS Tahoe 26.',
      'Kaby Lake HD 630 graphics are natively supported up to macOS Tahoe 26.': 'Gráficos Kaby Lake HD 630 são suportados nativamente até o macOS Tahoe 26.',
      'Coffee Lake was released in 2017 on 14nm, 8th/9th Gen Core series with UHD 620 / UHD 630 graphics.': 'Coffee Lake foi lançado em 2017 em 14nm, 8ª/9ª Geração da série Core com gráficos UHD 620 / UHD 630.',
      'Coffee Lake was released in 2017 on 14nm, 8th/9th Gen Core series with UHD 630 graphics.': 'Coffee Lake foi lançado em 2017 em 14nm, 8ª/9ª Geração da série Core com gráficos UHD 630.',
      'Coffee Lake UHD 620 graphics are natively supported up to macOS Tahoe 26.': 'Gráficos Coffee Lake UHD 620 são suportados nativamente até o macOS Tahoe 26.',
      'Coffee Lake UHD 630 graphics are natively supported up to macOS Tahoe 26.': 'Gráficos Coffee Lake UHD 630 são suportados nativamente até o macOS Tahoe 26.',
      'Comet Lake was released in 2020 on 14nm, 10th Gen Core series with UHD 620 / UHD 630 graphics.': 'Comet Lake foi lançado em 2020 em 14nm, 10ª Geração da série Core com gráficos UHD 620 / UHD 630.',
      'Comet Lake was released in 2020 on 14nm, 10th Gen Core series with UHD 630 graphics.': 'Comet Lake foi lançado em 2020 em 14nm, 10ª Geração da série Core com gráficos UHD 630.',
      'Comet Lake UHD 620 graphics are natively supported up to macOS Tahoe 26.': 'Gráficos Comet Lake UHD 620 são suportados nativamente até o macOS Tahoe 26.',
      'Comet Lake UHD 630 graphics are natively supported up to macOS Tahoe 26.': 'Gráficos Comet Lake UHD 630 são suportados nativamente até o macOS Tahoe 26.',
      'Rocket Lake was released in 2021 on 14nm, 11th Gen Core series. Integrated UHD 730/750 graphics are unsupported; a supported discrete GPU (AMD Polaris/Navi) is required.': 'Rocket Lake foi lançado em 2021 em 14nm, 11ª Geração da série Core. Gráficos integrados UHD 730/750 não são suportados; é necessária uma GPU dedicada compatível (AMD Polaris/Navi).',
      'Alder Lake was released in 2021 on Intel 7 (10nm), 12th Gen Core with hybrid architecture (P-core + E-core). Requires a supported discrete GPU.': 'Alder Lake foi lançado em 2021 no processo Intel 7 (10nm), 12ª Geração Core com arquitetura híbrida (P-core + E-core). Requer uma GPU dedicada compatível.',
      'Raptor Lake was released in 2022 on Intel 7, 13th Gen Core with hybrid architecture. Requires a supported discrete GPU.': 'Raptor Lake foi lançado em 2022 no processo Intel 7, 13ª Geração Core com arquitetura híbrida. Requer uma GPU dedicada compatível.',
      'Raptor Lake Refresh was released in 2023 on Intel 7, 14th Gen Core series. Requires a supported discrete GPU.': 'Raptor Lake Refresh foi lançado em 2023 no processo Intel 7, 14ª Geração Core. Requer uma GPU dedicada compatível.',
      'Arrow Lake was released in 2024 on TSMC 3nm (N3B), Core Ultra 200S series. Requires a supported discrete GPU.': 'Arrow Lake foi lançado em 2024 em TSMC 3nm (N3B), série Core Ultra 200S. Requer uma GPU dedicada compatível.',
      'Tiger Lake was released in 2020 on 10nm, 11th Gen Core mobile. Integrated Iris Xe graphics are unsupported.': 'Tiger Lake foi lançado em 2020 em 10nm, 11ª Geração Core móvel. Gráficos integrados Iris Xe não são suportados.',
      'Ice Lake was released in 2019 on 10nm, 10th Gen Core mobile with Iris Plus G4/G7 graphics.': 'Ice Lake foi lançado em 2019 em 10nm, 10ª Geração Core móvel com gráficos Iris Plus G4/G7.',
      'Ice Lake Iris Plus graphics are natively supported up to macOS 13 Ventura, patchable via OCLP.': 'Gráficos Ice Lake Iris Plus são suportados nativamente até o macOS 13 Ventura, com suporte via OCLP.',
      'Haswell-E / Broadwell-E on X99 platform requires custom CPU power management and kernel patches.': 'Haswell-E / Broadwell-E na plataforma X99 requer gerenciamento personalizado de energia de CPU e patches de kernel.',
      'Skylake-X / Cascade Lake-X on X299 platform requires SSDT-PLUG and custom kernel patches.': 'Skylake-X / Cascade Lake-X na plataforma X299 requer SSDT-PLUG e patches personalizados de kernel.',
      'Threadripper 1000/2000 (17h) and 3000/5000 (19h) require AMD kernel patches and XLNX SSDTs.': 'Threadripper 1000/2000 (17h) e 3000/5000 (19h) requerem patches de kernel AMD e SSDTs XLNX.',
    },
    'zh': {
      'Bulldozer desktop CPUs include AMD Athlon X4 760K, A8-5600K, FX-4300, FX-6300, FX-8150, FX-8350.': 'Bulldozer 桌面处理器包括 AMD Athlon X4 760K、A8-5600K、FX-4300、FX-6300、FX-8150、FX-8350 等。',
      'Jaguar mobile CPUs include A4-5000, A6-5200, A8-6410, A10-5745M.': 'Jaguar 移动处理器包括 A4-5000、A6-5200、A8-6410、A10-5745M 等。',
      'AMD Bulldozer architecture was released in 2011 on 32nm, used for desktop and server processors.': 'AMD 推土机 (Bulldozer) 架构发布于 2011 年（32nm 工艺），主要用于桌面和服务器处理器。',
      'AMD Jaguar architecture was released in 2013 on 28nm technology.': 'AMD 美洲豹 (Jaguar) 架构发布于 2013 年（28nm 工艺）。',
      'Ryzen 2000-5000 series APUs use NootedRed driver, supporting Metal acceleration but without VDA hardware decoding.': 'Ryzen 2000-5000 系列核显 APU 使用 NootedRed 驱动，支持 Metal 图形加速，但不支持 VDA 硬件解码。',
      'NootedRed supports the entire Vega Raven ASIC family (from Ryzen 1000/Athlon series up to Ryzen 5000 and 7x30 series).': 'NootedRed 驱动支持整个 Vega Raven ASIC 家族（从 Ryzen 1000/速龙系列到 Ryzen 5000 及 7x30 系列）。',
      'Supports macOS Catalina 10.15 through macOS Tahoe 26. Recommend newer point releases (e.g. Big Sur 11.6 vs 11.0).': '支持 macOS Catalina 10.15 至 macOS Tahoe 26。推荐使用较新的次要版本（例如 Big Sur 11.6）。',
      'Ryzen 2000-5000 APUs can reduce OpenGL rendering overhead in Chromium browsers.': 'Ryzen 2000-5000 APU 可降低 Chromium 内核浏览器的 OpenGL 渲染开销。',
      'Recommend allocating 2GB+ VRAM for AMD APU graphics in BIOS settings.': '建议在 BIOS 设置中为 AMD APU 显存分配 2GB 或更多显存。',
      'Penryn was first released in 2007 on a 45nm process in Intel\'s Core 2 series.': 'Penryn 于 2007 年首次发布（45nm 工艺），属于 Intel 酷睿 2 系列。',
      'Penryn was first released in 2007 on a 45nm process, succeeding Conroe in Intel\'s Core 2 series.': 'Penryn 于 2007 年首次发布（45nm 工艺），接替酷睿 2 系列中的 Conroe 架构。',
      '\'Native Support\' indicates native GPU support without patches (except pre-1st Gen where onboard GMA is limited to OS X 10.7). \'Patch Support\' indicates hardware requires OCLP root patches.': '\'原生支持\' 表示无需补丁即可驱动 GPU（初代前集成 GMA 显卡最高限 OS X 10.7）。\'补丁支持\' 表示需要 OCLP 根补丁注入。',
      '\'Native Support\' indicates native GPU support. \'Patch Support\' indicates hardware requires OCLP root patches.': '\'原生支持\' 表示无需补丁驱动 GPU。\'补丁支持\' 表示需要 OCLP 根补丁注入。',
      'CPUs with SSE4.1 can be patched up to macOS Tahoe 26; otherwise limited to macOS 10.11.6.': '支持 SSE4.1 的 CPU 最高可通过补丁支持至 macOS Tahoe 26；否则最高仅支持 macOS 10.11.6。',
      'CPUs supporting SSE4.1 (e.g. Core 2 Duo P8700, T9600) can be patched up to macOS Sequoia 15; otherwise limited to macOS 10.11.6.': '支持 SSE4.1 的 CPU（如 Core 2 Duo P8700、T9600）最高可通过补丁支持至 macOS Sequoia 15；否则最高仅支持 macOS 10.11.6。',
      'On legacy laptops, integrated GMA graphics are unsupported; only laptops with supported discrete GPUs are viable.': '在老旧笔记本上，集成 GMA 显卡已不再支持；仅配备受支持独立显卡的机型可行。',
      'SSE4.1 is required for macOS 10.12 Sierra and newer; processors lacking SSE4.1 (e.g. Conroe) cannot boot newer macOS versions.': 'macOS 10.12 Sierra 及更高版本需要 SSE4.1 指令集；缺乏 SSE4.1 的处理器（如 Conroe）无法引导较新的系统。',
      'Apple removed USB 1.1 controller drivers in macOS Ventura 13+. Use a PCIe-to-USB 3.0 card during installation, then apply OCLP USB 1.1 root patches.': 'Apple 在 macOS Ventura 13+ 中移除了 USB 1.1 控制器驱动。安装时请使用 PCIe 转 USB 3.0 扩展卡，安装后应用 OCLP USB 1.1 根补丁。',
      'Most LGA775 motherboards lack UEFI support and require OpenCore Duet/emulated UEFI.': '大多数 LGA775 主板缺乏原生 UEFI 支持，需要使用 OpenCore Duet/模拟 UEFI 引导。',
      'Most PM45 / GM45 motherboards lack native UEFI and require emulated UEFI.': '大多数 PM45 / GM45 笔记本主板缺乏原生 UEFI 支持，需要使用模拟 UEFI 引导。',
      'Clarksfield was released in 2009 on 45nm Nehalem, 1st Gen Core i5/i7 without integrated graphics.': 'Clarksfield 于 2009 年发布（45nm Nehalem 架构），为初代酷睿 i5/i7（无集成显卡）。',
      'Lynnfield was released in 2009 on 45nm Nehalem (Core i5/i7, no iGPU). Clarkdale was released in 2010 on 32nm Nehalem (Core i3).': 'Lynnfield 于 2009 年发布（45nm Nehalem，i5/i7 无核显）。Clarkdale 于 2010 年发布（32nm Nehalem，i3 带核显）。',
      'Arrandale was released in 2010 on 32nm Nehalem, 1st Gen Core i3 with integrated graphics supported natively up to macOS 10.13. Patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Arrandale 于 2010 年发布（32nm Nehalem，初代 i3 带核显），核显原生支持至 macOS 10.13，通过 OCLP 2.0.1+ 可补丁支持至 macOS Sequoia 15。',
      'Most Clarksfield and Arrandale motherboards lack native UEFI and require emulated UEFI.': '大多数 Clarksfield 和 Arrandale 主板缺乏原生 UEFI 支持，需要使用模拟 UEFI 引导。',
      'Sandy Bridge was released in 2011 on 32nm, 2nd Gen Core series with HD 3000 integrated graphics.': 'Sandy Bridge 于 2011 年发布（32nm 工艺），为 2 代酷睿系列，配备 HD 3000 核显。',
      'Sandy Bridge HD 3000 graphics are natively supported up to macOS 10.13, patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Sandy Bridge HD 3000 核显原生支持至 macOS 10.13，通过 OCLP 2.0.1+ 可补丁支持至 macOS Sequoia 15。',
      'Sandy Bridge HD 3000 graphics are natively supported up to macOS 10.13.6 High Sierra, patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Sandy Bridge HD 3000 核显原生支持至 macOS 10.13.6，通过 OCLP 2.0.1+ 可补丁支持至 macOS Sequoia 15。',
      'Most Sandy Bridge 6-series mobile boards (e.g. HM65) lack native UEFI and require emulated UEFI.': '大多数 Sandy Bridge 6 系移动主板（如 HM65）缺乏原生 UEFI 支持，需要使用模拟 UEFI 引导。',
      'Ivy Bridge was released in 2012 on 22nm, 3rd Gen Core series with HD 4000 integrated graphics.': 'Ivy Bridge 于 2012 年发布（22nm 工艺），为 3 代酷睿系列，配备 HD 4000 核显。',
      'Ivy Bridge HD 4000 graphics are natively supported up to macOS 11 Big Sur, patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Ivy Bridge HD 4000 核显原生支持至 macOS 11 Big Sur，通过 OCLP 2.0.1+ 可补丁支持至 macOS Sequoia 15。',
      'Ivy Bridge 7-series boards (e.g. B75) fully support native UEFI.': 'Ivy Bridge 7 系列主板（如 B75）完全支持原生 UEFI 引导。',
      'Ivy Bridge motherboards fully support native UEFI.': 'Ivy Bridge 主板完全支持原生 UEFI 引导。',
      'Haswell was released in 2013 on 22nm, 4th Gen Core series with HD 4400 / HD 4600 integrated graphics.': 'Haswell 于 2013 年发布（22nm 工艺），为 4 代酷睿系列，配备 HD 4400 / HD 4600 核显。',
      'Haswell HD 4600 graphics are natively supported up to macOS 12 Monterey, patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Haswell HD 4600 核显原生支持至 macOS 12 Monterey，通过 OCLP 2.0.1+ 可补丁支持至 macOS Sequoia 15。',
      'Broadwell was released in 2014 on 14nm, 5th Gen Core series with HD 5500 / HD 6000 graphics.': 'Broadwell 于 2014 年发布（14nm 工艺），为 5 代酷睿系列，配备 HD 5500 / HD 6000 核显。',
      'Broadwell was released in 2014 on 14nm, 5th Gen Core series with Iris Pro 6200 graphics.': 'Broadwell 于 2014 年发布（14nm 工艺），为 5 代酷睿系列，配备 Iris Pro 6200 核显。',
      'Broadwell HD 5500 graphics are natively supported up to macOS 12 Monterey and patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Broadwell HD 5500 核显原生支持至 macOS 12 Monterey，通过 OCLP 2.0.1+ 可补丁支持至 macOS Sequoia 15。',
      'Broadwell Iris Pro 6200 graphics are natively supported up to macOS 12 Monterey, patchable up to macOS Sequoia 15 via OCLP 2.0.1+.': 'Broadwell Iris Pro 6200 核显原生支持至 macOS 12 Monterey，通过 OCLP 2.0.1+ 可补丁支持至 macOS Sequoia 15。',
      'Skylake was released in 2015 on 14nm, 6th Gen Core series with HD 520 / HD 530 integrated graphics.': 'Skylake 于 2015 年发布（14nm 工艺），为 6 代酷睿系列，配备 HD 520 / HD 530 核显。',
      'Skylake was released in 2015 on 14nm, 6th Gen Core series with HD 530 integrated graphics.': 'Skylake 于 2015 年发布（14nm 工艺），为 6 代酷睿系列，配备 HD 530 核显。',
      'Skylake HD 520 graphics are natively supported up to macOS 12 Monterey; spoof as HD 620/630 for macOS Tahoe 26.': 'Skylake HD 520 核显原生支持至 macOS 12 Monterey；仿冒为 HD 620/630 可支持至 macOS Tahoe 26。',
      'Skylake HD 530 graphics are natively supported up to macOS 12 Monterey; spoof as HD 630 for macOS Tahoe 26.': 'Skylake HD 530 核显原生支持至 macOS 12 Monterey；仿冒为 HD 630 可支持至 macOS Tahoe 26。',
      'Kaby Lake was released in 2016 on 14nm, 7th Gen Core series with HD 620 / HD 630 integrated graphics.': 'Kaby Lake 于 2016 年发布（14nm 工艺），为 7 代酷睿系列，配备 HD 620 / HD 630 核显。',
      'Kaby Lake was released in 2016 on 14nm, 7th Gen Core series with HD 630 integrated graphics.': 'Kaby Lake 于 2016 年发布（14nm 工艺），为 7 代酷睿系列，配备 HD 630 核显。',
      'Kaby Lake HD 620 graphics are natively supported up to macOS Tahoe 26.': 'Kaby Lake HD 620 核显原生支持至 macOS Tahoe 26。',
      'Kaby Lake HD 630 graphics are natively supported up to macOS Tahoe 26.': 'Kaby Lake HD 630 核显原生支持至 macOS Tahoe 26。',
      'Coffee Lake was released in 2017 on 14nm, 8th/9th Gen Core series with UHD 620 / UHD 630 graphics.': 'Coffee Lake 于 2017 年发布（14nm 工艺），为 8/9 代酷睿系列，配备 UHD 620 / UHD 630 核显。',
      'Coffee Lake was released in 2017 on 14nm, 8th/9th Gen Core series with UHD 630 graphics.': 'Coffee Lake 于 2017 年发布（14nm 工艺），为 8/9 代酷睿系列，配备 UHD 630 核显。',
      'Coffee Lake UHD 620 graphics are natively supported up to macOS Tahoe 26.': 'Coffee Lake UHD 620 核显原生支持至 macOS Tahoe 26。',
      'Coffee Lake UHD 630 graphics are natively supported up to macOS Tahoe 26.': 'Coffee Lake UHD 630 核显原生支持至 macOS Tahoe 26。',
      'Comet Lake was released in 2020 on 14nm, 10th Gen Core series with UHD 620 / UHD 630 graphics.': 'Comet Lake 于 2020 年发布（14nm 工艺），为 10 代酷睿系列，配备 UHD 620 / UHD 630 核显。',
      'Comet Lake was released in 2020 on 14nm, 10th Gen Core series with UHD 630 graphics.': 'Comet Lake 于 2020 年发布（14nm 工艺），为 10 代酷睿系列，配备 UHD 630 核显。',
      'Comet Lake UHD 620 graphics are natively supported up to macOS Tahoe 26.': 'Comet Lake UHD 620 核显原生支持至 macOS Tahoe 26。',
      'Comet Lake UHD 630 graphics are natively supported up to macOS Tahoe 26.': 'Comet Lake UHD 630 核显原生支持至 macOS Tahoe 26。',
      'Rocket Lake was released in 2021 on 14nm, 11th Gen Core series. Integrated UHD 730/750 graphics are unsupported; a supported discrete GPU (AMD Polaris/Navi) is required.': 'Rocket Lake 于 2021 年发布（14nm 工艺，11 代酷睿）。集成 UHD 730/750 显卡不受支持；必须搭配免驱独显（AMD Polaris/Navi）。',
      'Alder Lake was released in 2021 on Intel 7 (10nm), 12th Gen Core with hybrid architecture (P-core + E-core). Requires a supported discrete GPU.': 'Alder Lake 于 2021 年发布（Intel 7 工艺，12 代酷睿混合大小核架构）。必须搭配受支持的免驱独显。',
      'Raptor Lake was released in 2022 on Intel 7, 13th Gen Core with hybrid architecture. Requires a supported discrete GPU.': 'Raptor Lake 于 2022 年发布（Intel 7 工艺，13 代酷睿混合大小核架构）。必须搭配受支持的免驱独显。',
      'Raptor Lake Refresh was released in 2023 on Intel 7, 14th Gen Core series. Requires a supported discrete GPU.': 'Raptor Lake Refresh 于 2023 年发布（Intel 7 工艺，14 代酷睿系列）。必须搭配受支持的免驱独显。',
      'Arrow Lake was released in 2024 on TSMC 3nm (N3B), Core Ultra 200S series. Requires a supported discrete GPU.': 'Arrow Lake 于 2024 年发布（台积电 3nm N3B 工艺，Core Ultra 200S 系列）。必须搭配受支持的免驱独显。',
      'Tiger Lake was released in 2020 on 10nm, 11th Gen Core mobile. Integrated Iris Xe graphics are unsupported.': 'Tiger Lake 于 2020 年发布（10nm 工艺，11 代移动酷睿）。集成 Iris Xe 核显不受支持。',
      'Ice Lake was released in 2019 on 10nm, 10th Gen Core mobile with Iris Plus G4/G7 graphics.': 'Ice Lake 于 2019 年发布（10nm 工艺，10 代移动酷睿，配备 Iris Plus G4/G7 核显）。',
      'Ice Lake Iris Plus graphics are natively supported up to macOS 13 Ventura, patchable via OCLP.': 'Ice Lake Iris Plus 核显原生支持至 macOS 13 Ventura，可通过 OCLP 补丁支持更高版本。',
      'Haswell-E / Broadwell-E on X99 platform requires custom CPU power management and kernel patches.': 'X99 平台上的 Haswell-E / Broadwell-E 需要自定义 CPU 电源管理与内核补丁。',
      'Skylake-X / Cascade Lake-X on X299 platform requires SSDT-PLUG and custom kernel patches.': 'X299 平台上的 Skylake-X / Cascade Lake-X 需要 SSDT-PLUG 与自定义内核补丁。',
      'Threadripper 1000/2000 (17h) and 3000/5000 (19h) require AMD kernel patches and XLNX SSDTs.': 'Threadripper 1000/2000 (17h) 与 3000/5000 (19h) 需要 AMD 内核补丁与 XLNX SSDT。',
    },
  };

  static const Map<String, Map<String, String>> _biosTranslations = {
    'pt': {
      'VT-x': 'Virtualização Intel (VT-x)',
      'Intel Virtualization (VT-x)': 'Virtualização Intel (VT-x)',
      'Fast Boot': 'Inicialização Rápida (Fast Boot)',
      'Secure Boot': 'Inicialização Segura (Secure Boot)',
      'Serial/COM Port': 'Porta Serial/COM',
      'Parallel Port': 'Porta Paralela',
      'Intel SGX': 'Intel SGX',
      'Intel Platform Trust': 'Intel Platform Trust (PTT)',
      'Intel Platform Trust Technology (PTT)': 'Intel Platform Trust Technology (PTT)',
      'Execute Disable Bit': 'Execute Disable Bit (XD / Proteção de Execução)',
      'Execute Disable Bit (XD)': 'Execute Disable Bit (XD / Proteção de Execução)',
      'Hyper-Threading': 'Hyper-Threading (Multithreading)',
      'EHCI/XHCI Hand-off': 'EHCI/XHCI Hand-off (Transferência de controle USB)',
      'SATA Mode: AHCI': 'Modo SATA: AHCI',
      'IOMMU': 'IOMMU (AMD-Vi)',
      'Re-Size BAR Support': 'Suporte a Re-Size BAR',
      'Above 4G Decoding': 'Decodificação Acima de 4G (Above 4G Decoding)',
      'Above 4G Decoding (This must be on, if you can\'t find the option then add npci=0x3000 to boot-args. Do not have both this option and npci enabled at the same time.)': 'Decodificação Acima de 4G (Deve estar ativado. Se não encontrar a opção, adicione npci=0x3000 aos boot-args. Não mantenha ambos ativados simultaneamente)',
      'Above 4G Decoding(2020+ BIOS Notes: When enabling Above4G, Resizable BAR Support may become an available on some Z490 and newer motherboards. Please ensure that Booter -> Quirks -> ResizeAppleGpuBars is set to 0 if this is enabled)': 'Decodificação Acima de 4G (Notas BIOS 2020+: Ao ativar Above4G, Resizable BAR pode surgir em placas Z490+. Certifique-se de que Booter -> Quirks -> ResizeAppleGpuBars esteja em 0)',
      'Above 4G Decoding(If experiencing issues, ensure “MMIOH Base” is set to 12 TB or lower)': 'Decodificação Acima de 4G (Se tiver problemas, certifique-se de que \'MMIOH Base\' esteja em 12 TB ou menos)',
      'VT-d (can be enabled if you set DisableIoMapper to YES)': 'VT-d (pode ser ativado se definir DisableIoMapper para YES)',
      'VT-d (can be enabled if DisableIoMapper is set to YES)': 'VT-d (pode ser ativado se definir DisableIoMapper para YES)',
      'Compatibility Support Module (CSM) (Must be off in most cases, GPU errors/stalls like gIO are common when this option is enabled)': 'Módulo de Compatibilidade (CSM) (Deve estar desativado; erros e travamentos de GPU como gIO são comuns quando ativado)',
      'Compatibility Support Module (CSM) (Must be disabled in most cases; causes GPU errors/hangs such as gIO when enabled)': 'Módulo de Compatibilidade (CSM) (Deve estar desativado; erros e travamentos de GPU como gIO são comuns quando ativado)',
      'Thunderbolt (For initial install, as Thunderbolt can cause issues if not setup correctly)': 'Thunderbolt (Recomendado desativar na instalação inicial, pois pode causar problemas se mal configurado)',
      'CFG Lock (MSR 0xE2 write protection)(This must be off, if you can\'t find the option then enable AppleCpuPmCfgLock under Kernel -> Quirks. Your hack will not boot with CFG-Lock enabled)': 'CFG Lock (Proteção MSR 0xE2) (Deve estar desativado. Se não encontrar a opção, ative AppleCpuPmCfgLock em Kernel -> Quirks. O sistema não inicializará com CFG-Lock ativado)',
      'CFG Lock (MSR 0xE2 write protection)(This must be off, if you can\'t find the option then enable AppleXcpmCfgLock under Kernel -> Quirks. Your hack will not boot with CFG-Lock enabled)': 'CFG Lock (Proteção MSR 0xE2) (Deve estar desativado. Se não encontrar a opção, ative AppleXcpmCfgLock em Kernel -> Quirks. O sistema não inicializará com CFG-Lock ativado)',
      'CFG Lock (MSR 0xE2 write protection)(This must be off, if you can\'t find the option then enable AppleXcpmCfgLock under Kernel -> Quirks. Your hack will not boot with CFG-Lock enabled).For 10.10 and older, you\'ll need to enable AppleCpuPmCfgLock as well': 'CFG Lock (Proteção MSR 0xE2) (Deve estar desativado. Se não encontrar a opção, ative AppleXcpmCfgLock em Kernel -> Quirks. Para 10.10 e anteriores, ative também AppleCpuPmCfgLock)',
      'DVMT Pre-Allocated(iGPU Memory): 32MB or higher': 'DVMT Pré-alocado (Memória da iGPU): 32MB ou superior (recomendado 64MB/128MB)',
      'OS type: Windows 8.1/10 UEFI Mode (some motherboards may require ”Other OS“ instead)': 'Tipo de SO: Modo Windows 8.1/10 UEFI (algumas placas podem exigir \'Other OS\')',
      'OS Type: Windows 8.1/10 UEFI Mode (or \'Other OS\' on some motherboards)': 'Tipo de SO: Modo Windows 8.1/10 UEFI (ou \'Other OS\' em algumas placas)',
      'Enable AHCI, disable CSM, disable Secure Boot, set OS Type to Other': 'Ative AHCI, desative CSM, desative Secure Boot, defina Tipo de SO para Other',
      'Enable AHCI in BIOS': 'Ative AHCI na BIOS',
      'If AHCI is unavailable in BIOS, select Compatible mode for SATA.': 'Se o AHCI não estiver disponível na BIOS, selecione o modo Compatible para SATA.',
      'Enable AHCI in BIOS if available, or ensure AppleIntelPIIXATA.kext is included for legacy ATA controllers.': 'Ative AHCI na BIOS se disponível, ou garanta AppleIntelPIIXATA.kext para controladores ATA legados.',
      'Legacy LGA775 motherboards may have fewer settings; ensure SATA Mode is set to AHCI.': 'Placas LGA775 legadas podem ter menos opções; garanta que o Modo SATA esteja em AHCI.',
      'Legacy Gen 0 laptop BIOSes may have fewer settings; ensure SATA Mode is set to AHCI.': 'BIOS de notebooks de Geração 0 podem ter menos opções; garanta que o Modo SATA esteja em AHCI.',
    },
    'zh': {
      'VT-x': '英特尔虚拟化技术 (VT-x)',
      'Intel Virtualization (VT-x)': '英特尔虚拟化技术 (VT-x)',
      'Fast Boot': '快速启动 (Fast Boot)',
      'Secure Boot': '安全启动 (Secure Boot)',
      'Serial/COM Port': '串口/COM 端口 (Serial/COM Port)',
      'Parallel Port': '并口 (Parallel Port)',
      'Intel SGX': '英特尔 SGX (Intel SGX)',
      'Intel Platform Trust': '英特尔平台信任技术 (PTT)',
      'Intel Platform Trust Technology (PTT)': '英特尔平台信任技术 (PTT)',
      'Execute Disable Bit': '执行禁用位 (Execute Disable Bit / XD)',
      'Execute Disable Bit (XD)': '执行禁用位 (Execute Disable Bit / XD)',
      'Hyper-Threading': '超线程技术 (Hyper-Threading)',
      'EHCI/XHCI Hand-off': 'EHCI/XHCI Hand-off (USB 接管控制)',
      'SATA Mode: AHCI': 'SATA 模式：AHCI',
      'IOMMU': 'IOMMU (AMD-Vi 虚拟化)',
      'Re-Size BAR Support': 'Resizable BAR 支持',
      'Above 4G Decoding': '大于 4G 地址空间解码 (Above 4G Decoding)',
      'Above 4G Decoding (This must be on, if you can\'t find the option then add npci=0x3000 to boot-args. Do not have both this option and npci enabled at the same time.)': '大于 4G 地址空间解码 (Above 4G Decoding)（必须开启；若无此项请在 boot-args 中添加 npci=0x3000，切勿同时开启两者）',
      'Above 4G Decoding(2020+ BIOS Notes: When enabling Above4G, Resizable BAR Support may become an available on some Z490 and newer motherboards. Please ensure that Booter -> Quirks -> ResizeAppleGpuBars is set to 0 if this is enabled)': '大于 4G 地址空间解码 (Above 4G)（2020+ 主板注意：开启后若出现 Resizable BAR，请确保 Booter -> Quirks -> ResizeAppleGpuBars 设置为 0）',
      'Above 4G Decoding(If experiencing issues, ensure “MMIOH Base” is set to 12 TB or lower)': '大于 4G 地址空间解码 (Above 4G)（若遇到引导问题，请确保 \'MMIOH Base\' 设置为 12 TB 或更低）',
      'VT-d (can be enabled if you set DisableIoMapper to YES)': 'VT-d（如果将 DisableIoMapper 设置为 YES 则可以开启）',
      'VT-d (can be enabled if DisableIoMapper is set to YES)': 'VT-d（如果将 DisableIoMapper 设置为 YES 则可以开启）',
      'Compatibility Support Module (CSM) (Must be off in most cases, GPU errors/stalls like gIO are common when this option is enabled)': '兼容性支持模块 (CSM)（大多数情况下必须关闭；开启容易导致 gIO 等显卡报错或卡顿）',
      'Compatibility Support Module (CSM) (Must be disabled in most cases; causes GPU errors/hangs such as gIO when enabled)': '兼容性支持模块 (CSM)（大多数情况下必须关闭；开启容易导致 gIO 等显卡报错或卡顿）',
      'Thunderbolt (For initial install, as Thunderbolt can cause issues if not setup correctly)': '雷电接口 (Thunderbolt)（首次安装建议先关闭，未正确配置可能导致引导异常）',
      'CFG Lock (MSR 0xE2 write protection)(This must be off, if you can\'t find the option then enable AppleCpuPmCfgLock under Kernel -> Quirks. Your hack will not boot with CFG-Lock enabled)': 'CFG Lock (MSR 0xE2 写保护)（必须关闭。如果找不到此选项，请在 Kernel -> Quirks 中开启 AppleCpuPmCfgLock。开启 CFG-Lock 会导致系统无法引导）',
      'CFG Lock (MSR 0xE2 write protection)(This must be off, if you can\'t find the option then enable AppleXcpmCfgLock under Kernel -> Quirks. Your hack will not boot with CFG-Lock enabled)': 'CFG Lock (MSR 0xE2 写保护)（必须关闭。如果找不到此选项，请在 Kernel -> Quirks 中开启 AppleXcpmCfgLock。开启 CFG-Lock 会导致系统无法引导）',
      'CFG Lock (MSR 0xE2 write protection)(This must be off, if you can\'t find the option then enable AppleXcpmCfgLock under Kernel -> Quirks. Your hack will not boot with CFG-Lock enabled).For 10.10 and older, you\'ll need to enable AppleCpuPmCfgLock as well': 'CFG Lock (MSR 0xE2 写保护)（必须关闭。如果找不到此选项，请在 Kernel -> Quirks 中开启 AppleXcpmCfgLock。10.10 及旧版还需开启 AppleCpuPmCfgLock）',
      'DVMT Pre-Allocated(iGPU Memory): 32MB or higher': 'DVMT 预分配显存 (iGPU 内存)：32MB 或更高（有条件推荐 64MB/128MB）',
      'OS type: Windows 8.1/10 UEFI Mode (some motherboards may require ”Other OS“ instead)': '操作系统类型：Windows 8.1/10 UEFI 模式（部分主板可能需要选择 \'Other OS\'）',
      'OS Type: Windows 8.1/10 UEFI Mode (or \'Other OS\' on some motherboards)': '操作系统类型：Windows 8.1/10 UEFI 模式（部分主板选择 \'Other OS\'）',
      'Enable AHCI, disable CSM, disable Secure Boot, set OS Type to Other': '开启 AHCI，关闭 CSM，关闭 Secure Boot，设置操作系统类型为 Other',
      'Enable AHCI in BIOS': '在 BIOS 中开启 AHCI 模式',
      'If AHCI is unavailable in BIOS, select Compatible mode for SATA.': '若 BIOS 中无 AHCI 选项，请将 SATA 选择为 Compatible (兼容) 模式。',
      'Enable AHCI in BIOS if available, or ensure AppleIntelPIIXATA.kext is included for legacy ATA controllers.': '若可用请在 BIOS 中开启 AHCI，老旧 ATA 控制器需确保注入 AppleIntelPIIXATA.kext。',
      'Legacy LGA775 motherboards may have fewer settings; ensure SATA Mode is set to AHCI.': '老旧 LGA775 主板选项较少；请确保将 SATA 模式设置为 AHCI。',
      'Legacy Gen 0 laptop BIOSes may have fewer settings; ensure SATA Mode is set to AHCI.': '初代前老旧笔记本 BIOS 选项较少；请确保将 SATA 模式设置为 AHCI。',
    },
  };

  static const Map<String, Map<String, String>> _smbiosDescriptions = {
    'pt': {
      'iMac10,1': 'Compatível com OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13',
      'iMac11,1': 'Compatível com OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13',
      'iMac11,2': 'Compatível com OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13',
      'iMac12,2': 'Compatível com OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13, ideal para sistemas iGPU + dGPU',
      'iMac13,1': 'Compatível com OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, adequado para Ivy Bridge apenas com iGPU',
      'iMac13,2': 'Compatível com OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, adequado para Ivy Bridge com iGPU (computação) + dGPU (saída)',
      'iMac14,2': 'Compatível com OS X Mavericks 10.9 ~ macOS Big Sur 11, ideal para arquitetura Haswell com dGPUs NVIDIA Maxwell e Pascal',
      'iMac14,4': 'Compatível com OS X Mavericks 10.9 ~ macOS Big Sur 11, adequado para Haswell apenas com iGPU',
      'iMac15,1': 'Compatível com OS X Mavericks 10.9 ~ macOS Big Sur 11, adequado para Haswell com iGPU + dGPU',
      'iMac16,1': 'Compatível com macOS El Capitan 10.11 ~ macOS Monterey 12, adequado para modelos iGPU (ou com dGPU)',
      'iMac16,2': 'Compatível com macOS El Capitan 10.11 ~ macOS Monterey 12, adequado para arquitetura Broadwell iGPU (ou com dGPU)',
      'iMac17,1': 'Compatível com macOS El Capitan 10.11 ~ macOS Monterey 12, adequado para arquitetura Skylake iGPU (ou com dGPU)',
      'iMac18,1': 'Compatível com macOS Sierra 10.12 ~ macOS Ventura 13, adequado para modelos iGPU + dGPU. Nota: usuários apenas com iGPU podem ter distorção de cores.',
      'iMac18,3': 'Compatível com macOS Sierra 10.12 ~ macOS Ventura 13, adequado para iGPU (computação) + dGPU (saída de vídeo)',
      'iMac19,2': 'Compatível com macOS 10.14 ~ macOS Sequoia 15, adequado para modelos iGPU (ou com dGPU)',
      'iMac19,1': 'Compatível com macOS 10.14 ~ macOS Sequoia 15, adequado para modelos iGPU (ou com dGPU)',
      'iMac20,1': 'Compatível com macOS 10.15 ~ macOS Tahoe 26, adequado para processadores i7-10700K e inferiores com iGPU (ou com dGPU)',
      'iMac20,2': 'Compatível com macOS 10.15 ~ macOS Tahoe 26, adequado para processadores i9-10850K e superiores com iGPU (ou com dGPU)',
      'MacBookPro5,1': 'Compatível com macOS 10.5 ~ macOS El Capitan 10.11',
      'MacBookPro5,2': 'Compatível com macOS 10.5 ~ macOS El Capitan 10.11',
      'MacBookPro5,3': 'Compatível com macOS 10.5 ~ macOS El Capitan 10.11',
      'MacBookPro5,4': 'Compatível com macOS 10.5 ~ macOS El Capitan 10.11',
      'MacBookPro6,1': 'Compatível com macOS 10.6 ~ macOS High Sierra 10.13',
      'MacBookPro6,2': 'Compatível com macOS 10.6 ~ macOS High Sierra 10.13',
      'MacBookAir4,1': 'Compatível com macOS 10.7 ~ macOS High Sierra 10.13',
      'MacBookAir4,2': 'Compatível com macOS 10.7 ~ macOS High Sierra 10.13',
      'MacBookPro8,1': 'Compatível com macOS 10.7 ~ macOS High Sierra 10.13',
      'MacBookPro8,2': 'Compatível com macOS 10.7 ~ macOS High Sierra 10.13',
      'MacBookPro8,3': 'Compatível com macOS 10.7 ~ macOS High Sierra 10.13',
      'Macmini5,1': 'Compatível com macOS 10.7 ~ macOS High Sierra 10.13',
      'Macmini5,2': 'Compatível com macOS 10.7 ~ macOS High Sierra 10.13',
      'Macmini5,3': 'Compatível com macOS 10.7 ~ macOS High Sierra 10.13',
      'MacBookAir5,1': 'Compatível com macOS 10.8 ~ macOS Catalina 10.15',
      'MacBookAir5,2': 'Compatível com macOS 10.8 ~ macOS Catalina 10.15',
      'MacBookPro9,2': 'Compatível com macOS 10.8 ~ macOS Catalina 10.15',
      'MacBookPro10,1': 'Compatível com macOS 10.8 ~ macOS Catalina 10.15',
      'MacBookPro10,2': 'Compatível com macOS 10.8 ~ macOS Catalina 10.15',
      'Macmini6,1': 'Compatível com macOS 10.8 ~ macOS Catalina 10.15',
      'Macmini6,2': 'Compatível com macOS 10.8 ~ macOS Catalina 10.15',
      'MacBookAir6,1': 'Compatível com macOS 10.9 ~ macOS Big Sur 11',
      'MacBookAir6,2': 'Compatível com macOS 10.9 ~ macOS Big Sur 11',
      'MacBookPro11,1': 'Compatível com macOS 10.9 ~ macOS Big Sur 11',
      'MacBookPro11,2': 'Compatível com macOS 10.9 ~ macOS Big Sur 11',
      'MacBookPro11,3': 'Compatível com macOS 10.9 ~ macOS Big Sur 11',
      'MacBookPro11,4': 'Compatível com macOS High Sierra 10.13 ~ macOS Monterey 12',
      'MacBookPro11,5': 'Compatível com macOS High Sierra 10.13 ~ macOS Monterey 12',
      'Macmini3,1': 'Compatível com macOS 10.5 ~ macOS El Capitan 10.11',
      'Macmini4,1': 'Compatível com macOS 10.5 ~ macOS El Capitan 10.11',
      'Macmini7,1': 'Compatível com macOS Mojave 10.14 ~ macOS Monterey 12',
      'MacBook8,1': 'Compatível com OS X El Capitan 10.11 ~ macOS Big Sur 11',
      'MacBookAir7,1': 'Compatível com OS X El Capitan 10.11 ~ macOS Monterey 12',
      'MacBookAir7,2': 'Compatível com OS X El Capitan 10.11 ~ macOS Monterey 12',
      'MacBookPro12,1': 'Compatível com macOS Sierra 10.12 ~ macOS Monterey 12',
      'MacBook9,1': 'Compatível com macOS Sierra 10.12 ~ macOS Monterey 12 (iGPU HD 515 suporta oficialmente até Monterey 12, spoofing suporta macOS Sequoia 15)',
      'MacBookPro13,1': 'Compatível com macOS Sierra 10.12 ~ macOS Monterey 12 (iGPU Iris 540 suporta oficialmente até Monterey 12, spoofing suporta macOS Sequoia 15)',
      'MacBookPro13,2': 'Compatível com macOS Sierra 10.12 ~ macOS Monterey 12 (iGPU Iris 550 suporta oficialmente até Monterey 12, spoofing suporta macOS Sequoia 15)',
      'MacBookPro13,3': 'Compatível com macOS Sierra 10.12 ~ macOS Monterey 12 (iGPU HD 530 suporta oficialmente até Monterey 12, spoofing suporta macOS Sequoia 15)',
      'MacBookPro14,1': 'Compatível com macOS High Sierra 10.13 ~ macOS Ventura 13',
      'MacBookPro14,2': 'Compatível com macOS High Sierra 10.13 ~ macOS Ventura 13',
      'MacBookPro14,3': 'Compatível com macOS High Sierra 10.13 ~ macOS Ventura 13',
      'MacBookPro15,1': 'Compatível com macOS Mojave 10.14 ~ macOS Sequoia 15',
      'MacBookPro15,2': 'Compatível com macOS Mojave 10.14 ~ macOS Sequoia 15',
      'MacBookPro15,3': 'Compatível com macOS Mojave 10.14 ~ macOS Sequoia 15',
      'MacBookPro15,4': 'Compatível com macOS Mojave 10.14 ~ macOS Sequoia 15',
      'Macmini8,1': 'Compatível com macOS Mojave 10.14 ~ macOS Sequoia 15',
      'MacBookPro16,1': 'Compatível com macOS Catalina 10.15 ~ macOS Tahoe 26',
      'MacBookPro16,3': 'Compatível com macOS Catalina 10.15 ~ macOS Sequoia 15',
      'MacBookPro16,4': 'Compatível com macOS Catalina 10.15 ~ macOS Tahoe 26',
      'MacBookAir9,1': 'Compatível com macOS Catalina 10.15 ~ macOS Sequoia 15',
      'MacBookPro16,2': 'Compatível com macOS Catalina 10.15 ~ macOS Tahoe 26',
      'MacPro6,1': 'Compatível com macOS 10.9 ~ macOS Monterey 12, adequado para modelos apenas com dGPU',
      'iMacPro1,1': 'Compatível com macOS 10.13 ~ macOS Sequoia 15, ideal para modelos apenas com dGPU. Para Intel 11ª Geração+, fornece gerenciamento nativo de energia da CPU sem patches extras.',
      'MacPro7,1': 'Compatível com macOS 10.15 ~ macOS Tahoe 26, adequado para sistemas apenas com dGPU AMD. GPUs nativas AMD (ex: RX560, RX570, RX5500, RX6600) fornecem aceleração de hardware VDA completa.',
    },
  };
}
