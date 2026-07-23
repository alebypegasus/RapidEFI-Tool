import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/utils/config/models/device_properties/device_property_item.dart';
import 'package:rapidefi/utils/config/models/device_properties/igpu_model.dart';
import 'package:rapidefi/utils/config/services/config_service.dart';
import 'package:rapidefi/utils/config/support/platform_properties.dart';
import 'package:rapidefi/pages/manual/widgets/graphics/igpu_advance.dart';
import 'package:rapidefi/pages/manual/widgets/graphics/igpu_base.dart';
import 'package:rapidefi/pages/manual/widgets/graphics/igpu_connector_customization.dart';
import 'package:rapidefi/pages/shared/widgets/oclp_link_button.dart';
import 'package:rapidefi/pages/shared/widgets/tabbed_title_card.dart';
import 'package:rapidefi/widgets/state_keep_container.dart';

import 'package:rapidefi/pages/manual/widgets/graphics/edid_page.dart';

class IgpuWidget extends StatefulWidget {
  const IgpuWidget(
      {super.key,
      required this.igpuModels,
      this.onChanged,
      required this.platformCode,
      required this.igPlatformId,
      required this.preferExternalConnectors,
      this.selectedigpuModel,
      this.onDevicePropertiesChanged,
      this.connectorAllData = const {},
      this.onConnectorAllDataChanged,
      this.selectedDevicePropertyItems,
      this.onEdidChanged,
      this.edid});
  final String? edid;
  final String platformCode;
  final String igPlatformId;
  final bool preferExternalConnectors;
  final List<List<IgpuPropertyModel>> igpuModels;
  final List<IgpuPropertyModel>? selectedigpuModel;
  final ValueChanged? onChanged;
  final ValueChanged<String>? onEdidChanged;
  final Set<DevicePropertyItem>? selectedDevicePropertyItems;
  final Function(Set<DevicePropertyItem>)? onDevicePropertiesChanged;
  final Map<int, String> connectorAllData;
  final void Function(int connectorIndex, String value)?
      onConnectorAllDataChanged;
  @override
  State<IgpuWidget> createState() => _IgpuWidgetState();
}

class _IgpuWidgetState extends State<IgpuWidget> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  List<Widget> _buildPages() {
    return [
      StateKeepContainer(
          child: IgpuBase(
        igpuModels: widget.igpuModels,
        selectedigpuModel: widget.selectedigpuModel,
        onChanged: (value) {
          widget.onChanged?.call(value);
        },
        onDevicePropertiesChanged: widget.onDevicePropertiesChanged,
        selectedDevicePropertyItems: widget.selectedDevicePropertyItems,
      )),
      StateKeepContainer(
          child: IgpuAdvance(
        availableOptions: selectableIGPUDevicePropertyOptionsForPlatform(
          ConfigService().configModel.platformCode,
        ),
        selectedDevicePropertyItems: widget.selectedDevicePropertyItems,
        onDevicePropertiesChanged: widget.onDevicePropertiesChanged,
      )),
      StateKeepContainer(
        child: IgpuConnectorCustomization(
          platformCode: widget.platformCode,
          igPlatformId: widget.igPlatformId,
          preferExternalConnectors: widget.preferExternalConnectors,
          connectorAllData: widget.connectorAllData,
          onChanged: widget.onConnectorAllDataChanged,
        ),
      ),
      StateKeepContainer(
          child: EDIDPage(
        edid: widget.edid,
        onChanged: widget.onEdidChanged,
      ))
    ];
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tabName = [
      l10n.baseConfig,
      l10n.advanceConfig,
      l10n.connectorCustomization,
      l10n.displayEdid,
    ];
    return TabbedTitleCard(
      title: l10n.igpuConfigTitle,
      subTitle: l10n.selectIfMatching,
      initiallyExpanded: false,
      height: 560,
      content: const OclpLinkButton(),
      controller: _tabController,
      tabs: tabName.map((name) => Tab(text: name)).toList(),
      children: _buildPages(),
    );
  }
}
