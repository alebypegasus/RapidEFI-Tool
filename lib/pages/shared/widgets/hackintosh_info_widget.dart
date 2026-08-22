import 'package:flutter/material.dart';
import 'package:rapidefi/extension/list_extension.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/manual/model/platform_entity.dart';

class HackintoshInfoWidget extends StatelessWidget {
  final PlatformEntity platformEntity;
  const HackintoshInfoWidget({super.key, required this.platformEntity});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final isZh = Localizations.localeOf(context).languageCode == 'zh';

    final biosEnableList = isZh
        ? (platformEntity.config.bios.enable.ch.isNotEmpty
            ? platformEntity.config.bios.enable.ch.toList().descriptionList
            : platformEntity.config.bios.enable.en.toList().descriptionList)
        : (platformEntity.config.bios.enable.en.isNotEmpty
            ? platformEntity.config.bios.enable.en.toList().descriptionList
            : platformEntity.config.bios.enable.ch.toList().descriptionList);

    final biosDisableList = isZh
        ? (platformEntity.config.bios.disable.ch.isNotEmpty
            ? platformEntity.config.bios.disable.ch.toList().descriptionList
            : platformEntity.config.bios.disable.en.toList().descriptionList)
        : (platformEntity.config.bios.disable.en.isNotEmpty
            ? platformEntity.config.bios.disable.en.toList().descriptionList
            : platformEntity.config.bios.disable.ch.toList().descriptionList);

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
          "${l10n?.cpuInfoTitle ?? '[CPU Info]:'} \n${platformEntity.note.descriptionList}",
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "${l10n?.biosRecommendedEnabled ?? '[BIOS Recommended Settings - Enabled]:'} \n$biosEnableList",
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "${l10n?.biosRecommendedDisabled ?? '[BIOS Recommended Settings - Disabled]:'} \n$biosDisableList",
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

