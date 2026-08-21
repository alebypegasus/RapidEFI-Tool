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
          "Initial natively supported macOS version:  ${platformEntity.initialSupport}",
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Latest natively supported macOS version:  ${platformEntity.lastSupported}",
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 10,
        ),
        platformEntity.oclpSupported.isEmpty
            ? const SizedBox.shrink()
            : Text(
                "OCLP patch supported macOS versions:  ${platformEntity.oclpSupported}",
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "[CPU Info]: \n${platformEntity.note.descriptionList}",
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "[BIOS Recommended Settings - Enabled]: \n${platformEntity.config.bios.enable.en.isNotEmpty ? platformEntity.config.bios.enable.en.toList().descriptionList : platformEntity.config.bios.enable.ch.toList().descriptionList}",
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "[BIOS Recommended Settings - Disabled]: \n${platformEntity.config.bios.disable.en.isNotEmpty ? platformEntity.config.bios.disable.en.toList().descriptionList : platformEntity.config.bios.disable.ch.toList().descriptionList}",
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
