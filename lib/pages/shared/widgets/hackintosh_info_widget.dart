import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/extension/list_extension.dart';
import 'package:rapidefi/pages/manual/model/platform_entity.dart';
import 'package:flutter/material.dart';

class HackintoshInfoWidget extends StatelessWidget {
  final PlatformEntity platformEntity;
  const HackintoshInfoWidget({super.key, required this.platformEntity});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.sharedMacosInitialSupport(platformEntity.initialSupport),
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          AppLocalizations.of(context)!.sharedMacosLastSupported(platformEntity.lastSupported),
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 10,
        ),
        platformEntity.oclpSupported.isEmpty
            ? const SizedBox.shrink()
            : Text(
                AppLocalizations.of(context)!.sharedOclpSupported(platformEntity.oclpSupported),
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
        const SizedBox(
          height: 10,
        ),
        Text(
          AppLocalizations.of(context)!.sharedCpuInfo(platformEntity.note.descriptionList),
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          AppLocalizations.of(context)!.sharedBiosEnable(platformEntity.config.bios.enable.ch.toList().descriptionList),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          AppLocalizations.of(context)!.sharedBiosDisable(platformEntity.config.bios.disable.ch.toList().descriptionList),
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
