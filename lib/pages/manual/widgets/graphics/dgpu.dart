import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/pages/manual/widgets/graphics/amd_gpu.dart';
import 'package:rapidefi/pages/manual/widgets/graphics/fake_gpu.dart';
import 'package:rapidefi/pages/manual/widgets/graphics/nvidia_gpu.dart';
import 'package:rapidefi/pages/shared/widgets/oclp_link_button.dart';
import 'package:rapidefi/pages/shared/widgets/tabbed_title_card.dart';
import 'package:rapidefi/widgets/state_keep_container.dart';

class DgpuWidget extends StatefulWidget {
  const DgpuWidget({
    super.key,
    this.onNootRXChanged,
    this.onNvidiaChanged,
    this.onFakeGPUChanged,
    this.nootRXSelected = false,
    this.nvidiaSelected = false,
  });

  final ValueChanged<bool>? onNootRXChanged;
  final ValueChanged<bool>? onNvidiaChanged;
  final Function(String, String)? onFakeGPUChanged;
  final bool nootRXSelected;
  final bool nvidiaSelected;

  @override
  State<DgpuWidget> createState() => _DgpuWidgetState();
}

class _DgpuWidgetState extends State<DgpuWidget> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Widget> get pages => [
        StateKeepContainer(
          child: NvidiaGPU(
            selected: widget.nvidiaSelected,
            onChanged: widget.onNvidiaChanged,
          ),
        ),
        StateKeepContainer(
          child: AMDGPU(
            nootRXSelected: widget.nootRXSelected,
            onNootRXChanged: widget.onNootRXChanged,
          ),
        ),
        StateKeepContainer(
          child: FakeGPU(
            onChanged: (dgpuPath, dgpuFakeID) {
              widget.onFakeGPUChanged?.call(dgpuPath, dgpuFakeID);
            },
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tabName = [l10n.nvidiaDgpu, l10n.amdDgpu, l10n.amdDgpuSpoof];
    return TabbedTitleCard(
      title: l10n.dgpuConfigTitle,
      subTitle: l10n.optionalSelectIfMatching,
      initiallyExpanded: false,
      content: const OclpLinkButton(),
      controller: _tabController,
      tabs: tabName.map((name) => Tab(text: name)).toList(),
      children: pages,
    );
  }
}

