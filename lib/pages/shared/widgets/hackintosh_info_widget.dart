import 'package:flutter/material.dart';
import 'package:rapidefi/extension/list_extension.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/manual/model/platform_entity.dart';
import 'package:rapidefi/utils/translation/hackintosh_details_translator.dart';

class HackintoshInfoWidget extends StatelessWidget {
  final PlatformEntity platformEntity;
  const HackintoshInfoWidget({super.key, required this.platformEntity});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final langCode = Localizations.localeOf(context).languageCode;
    final isZh = langCode == 'zh';

    final translatedNotes = HackintoshDetailsTranslator.translateNotes(
      platformEntity.note,
      langCode,
    );

    final rawBiosEnable = isZh
        ? (platformEntity.config.bios.enable.ch.isNotEmpty
            ? platformEntity.config.bios.enable.ch
            : platformEntity.config.bios.enable.en)
        : (platformEntity.config.bios.enable.en.isNotEmpty
            ? platformEntity.config.bios.enable.en
            : platformEntity.config.bios.enable.ch);

    final translatedBiosEnable = HackintoshDetailsTranslator.translateBiosList(
      rawBiosEnable,
      langCode,
    );

    final rawBiosDisable = isZh
        ? (platformEntity.config.bios.disable.ch.isNotEmpty
            ? platformEntity.config.bios.disable.ch
            : platformEntity.config.bios.disable.en)
        : (platformEntity.config.bios.disable.en.isNotEmpty
            ? platformEntity.config.bios.disable.en
            : platformEntity.config.bios.disable.ch);

    final translatedBiosDisable = HackintoshDetailsTranslator.translateBiosList(
      rawBiosDisable,
      langCode,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${l10n?.initialSupportMacOs ?? 'Initial natively supported macOS version:'}  ${platformEntity.initialSupport}",
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "${l10n?.lastSupportMacOs ?? 'Latest natively supported macOS version:'}  ${platformEntity.lastSupported}",
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 10,
        ),
        platformEntity.oclpSupported.isEmpty
            ? const SizedBox.shrink()
            : Text(
                "${l10n?.oclpSupportMacOs ?? 'OCLP patch supported macOS versions:'}  ${platformEntity.oclpSupported}",
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "${l10n?.cpuInfoTitle ?? '[CPU Info]:'} \n${translatedNotes.descriptionList}",
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "${l10n?.biosRecommendedEnabled ?? '[BIOS Recommended Settings - Enabled]:'} \n${translatedBiosEnable.descriptionList}",
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "${l10n?.biosRecommendedDisabled ?? '[BIOS Recommended Settings - Disabled]:'} \n${translatedBiosDisable.descriptionList}",
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}


