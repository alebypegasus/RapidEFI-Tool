import 'package:fluent_ui/fluent_ui.dart' hide Checkbox, FilledButton;
import 'package:flutter/material.dart' hide Colors, Tooltip;
import 'package:oktoast/oktoast.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/expander_card.dart';
import 'package:rapidefi/utils/config/models/motherboard/mbconf_model.dart';
import 'package:rapidefi/utils/config/support/mbconf_service.dart';

/// 主板型号选择 + 可勾选条目应用 Widget
/// 外观与 SMBIOS、核显等区块保持一致（ExpanderCard + ComboBox）
class MotherboardSelectorWidget extends StatefulWidget {
  final Function(List<MbConfSelectableItem> selected)? onApply;

  const MotherboardSelectorWidget({super.key, this.onApply});

  @override
  State<MotherboardSelectorWidget> createState() =>
      _MotherboardSelectorWidgetState();
}

class _MotherboardSelectorWidgetState
    extends State<MotherboardSelectorWidget> {
  List<MbConfPlatform> _platforms = [];
  bool _navLoading = true;

  String? _selPlatform;
  String? _selVendor;
  String? _selModel;

  MbConfEntry? _entry;
  bool _entryLoading = false;
  Set<int> _checked = {};

  @override
  void initState() {
    super.initState();
    _loadNav();
  }

  Future<void> _loadNav() async {
    final nav = await MbConfService.instance.loadNav();
    if (mounted) {
      setState(() {
        _platforms = nav;
        _navLoading = false;
      });
    }
  }

  Future<void> _loadEntry() async {
    if (_selPlatform == null || _selVendor == null || _selModel == null) return;
    setState(() => _entryLoading = true);
    final entry = await MbConfService.instance
        .getEntry(_selPlatform!, _selVendor!, _selModel!);
    if (mounted) {
      setState(() {
        _entry = entry;
        _entryLoading = false;
        _checked = Set<int>.from(
            List.generate(entry?.items.length ?? 0, (i) => i));
      });
    }
  }

  void _onPlatformChanged(String? val) {
    setState(() {
      _selPlatform = val;
      _selVendor = null;
      _selModel = null;
      _entry = null;
    });
  }

  void _onVendorChanged(String? val) {
    setState(() {
      _selVendor = val;
      _selModel = null;
      _entry = null;
    });
  }

  void _onModelChanged(String? val) {
    setState(() {
      _selModel = val;
      _entry = null;
    });
    _loadEntry();
  }

  void _toggleAll(bool select) {
    if (_entry == null) return;
    setState(() {
      _checked = select
          ? Set<int>.from(
              List.generate(_entry!.items.length, (i) => i))
          : {};
    });
  }

  void _apply() {
    if (_entry == null || _checked.isEmpty) return;
    final selected = _checked.map((i) => _entry!.items[i]).toList();
    widget.onApply?.call(selected);
    showToast(AppLocalizations.of(context)!.manualMotherboardAppliedCount(_selModel ?? '', selected.length.toString()),
        duration: const Duration(seconds: 3));
  }

  // ─────────────────────────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final vendorList = _selPlatform == null
        ? <MbConfVendor>[]
        : (_platforms
                .firstWhere((p) => p.name == _selPlatform,
                    orElse: () => MbConfPlatform(name: '', vendors: []))
                .vendors);

    final modelList = _selVendor == null
        ? <String>[]
        : (vendorList
                .firstWhere((v) => v.name == _selVendor,
                    orElse: () => MbConfVendor(name: '', models: []))
                .models);

    return ExpanderCard(
      // AppLocalizations.of(context)!.manualMotherboardDetails 区域：条目勾选列表（仅在选中主板后显示）
      header: Text(l10n.selectConfigItems),
      expander: (_entry != null || _entryLoading)
          ? _buildExpanderContent()
          : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── 标题行 ──────────────────────────────────────────
          Row(children: [
            Text(
              l10n.motherboardModelConfig,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            Text(
              _selModel != null
                  ? '${l10n.selected}$_selModel'
                  : l10n.selectMotherboardModelTip,
              style: TextStyle(
                fontSize: 13,
                color: _selModel != null ? null : Colors.grey,
              ),
            ),
          ]),
          const SizedBox(height: 12),
          // ── 三级 ComboBox ────────────────────────────────────
          if (_navLoading)
            const Center(child: ProgressRing())
          else
            Wrap(
              spacing: 12,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                // 平台代数
                _buildComboBox<String>(
                  label: l10n.platformGen,
                  width: 300,
                  value: _selPlatform,
                  items: _platforms
                      .map((p) => ComboBoxItem(
                          value: p.name,
                          child: Text(p.name,
                              overflow: TextOverflow.ellipsis)))
                      .toList(),
                  onChanged: _onPlatformChanged,
                ),
                // 品牌
                _buildComboBox<String>(
                  label: l10n.vendor,
                  width: 150,
                  value: _selVendor,
                  items: vendorList
                      .map((v) => ComboBoxItem(
                          value: v.name, child: Text(v.name)))
                      .toList(),
                  onChanged: vendorList.isEmpty ? null : _onVendorChanged,
                ),
                // 主板型号
                _buildComboBox<String>(
                  label: l10n.motherboardModel,
                  width: 320,
                  value: _selModel,
                  items: modelList
                      .map((m) => ComboBoxItem(
                          value: m,
                          child: Text(m,
                              overflow: TextOverflow.ellipsis)))
                      .toList(),
                  onChanged: modelList.isEmpty ? null : _onModelChanged,
                ),
              ],
            ),
        ],
      ),
    );
  }

  // ── ComboBox 封装 ───────────────────────────────────────────────────────
  Widget _buildComboBox<T>({
    required String label,
    required double width,
    required T? value,
    required List<ComboBoxItem<T>> items,
    required ValueChanged<T?>? onChanged,
  }) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label,
            style: const TextStyle(fontSize: 12, color: Colors.grey)),
        const SizedBox(height: 4),
        SizedBox(
          width: width,
          child: ComboBox<T>(
            isExpanded: true,
            value: value,
            placeholder: Text(l10n.pleaseSelect),
            items: items,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }

  // ── 展开区域内容 ─────────────────────────────────────────────────────────
  Widget _buildExpanderContent() {
    if (_entryLoading) {
      return const Padding(
        padding: EdgeInsets.all(20),
        child: Center(child: ProgressRing()),
      );
    }
    final items = _entry!.items;
    final allSel = _checked.length == items.length;
    final noneSel = _checked.isEmpty;

    // 按 category 分组
    final grouped = <MbItemCategory, List<int>>{};
    for (var i = 0; i < items.length; i++) {
      grouped.putIfAbsent(items[i].category, () => []).add(i);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 全选行
          _buildSelectAllRow(allSel, noneSel, items.length),
          const SizedBox(height: 4),
          // 各分组
          ...grouped.entries
              .map((e) => _buildGroup(e.key, e.value, items)),
          const SizedBox(height: 8),
          // 应用按钮
          _buildApplyBar(),
        ],
      ),
    );
  }

  Widget _buildSelectAllRow(bool allSel, bool noneSel, int total) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => _toggleAll(!allSel),
        borderRadius: BorderRadius.circular(4),
        child: Row(children: [
          Checkbox(
            tristate: true,
            value: allSel ? true : noneSel ? false : null,
            onChanged: (v) => _toggleAll(v == true),
          ),
          Text(AppLocalizations.of(context)!.manualMotherboardSelectAll,
              style:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
          const SizedBox(width: 8),
          Text(AppLocalizations.of(context)!.manualMotherboardSelectedCount(_checked.length.toString(), total.toString()),
              style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ]),
      ),
    );
  }

  Widget _buildGroup(
    MbItemCategory cat,
    List<int> indices,
    List<MbConfSelectableItem> items,
  ) {
    final groupAllSel = indices.every(_checked.contains);
    final groupNoneSel = indices.every((i) => !_checked.contains(i));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 分组标题
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => setState(() => groupAllSel
                ? _checked.removeAll(indices)
                : _checked.addAll(indices)),
            borderRadius: BorderRadius.circular(4),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(children: [
                Checkbox(
                  tristate: true,
                  value: groupAllSel
                      ? true
                      : groupNoneSel
                          ? false
                          : null,
                  onChanged: (v) => setState(() => v == true
                      ? _checked.addAll(indices)
                      : _checked.removeAll(indices)),
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize:
                      MaterialTapTargetSize.shrinkWrap,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: _catColor(cat).withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    _catLabel(cat),
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: _catColor(cat),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
        ...indices.map((idx) => _buildRow(idx, items[idx])),
        const SizedBox(height: 2),
      ],
    );
  }

  Widget _buildRow(int idx, MbConfSelectableItem item) {
    final checked = _checked.contains(idx);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => setState(
            () => checked ? _checked.remove(idx) : _checked.add(idx)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
          child: Row(children: [
            Checkbox(
              value: checked,
              onChanged: (v) => setState(() =>
                  v == true ? _checked.add(idx) : _checked.remove(idx)),
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            Expanded(
              child: Text(
                item.label,
                style: const TextStyle(
                    fontSize: 12, fontFamily: 'monospace'),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _buildApplyBar() {
    final l10n = AppLocalizations.of(context)!;
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Button(
        onPressed: () => _toggleAll(false),
        child: Text(l10n.clearAllSelection),
      ),
      const SizedBox(width: 8),
      FilledButton(
        onPressed: _checked.isNotEmpty ? _apply : null,
        child: Text(l10n.applySelected(_checked.length)),
      ),
    ]);
  }

  // ── 辅助 ─────────────────────────────────────────────────────────────────
  String _catLabel(MbItemCategory cat) => switch (cat) {
        MbItemCategory.acpiAdd      => 'ACPI',
        MbItemCategory.kextAdd      => 'Kext',
        MbItemCategory.kernelPatch  => 'Kernel.Patch',
        MbItemCategory.kernelQuirk  => 'Kernel.Quirks',
        MbItemCategory.booterQuirk  => 'Booter.Quirks',
        MbItemCategory.dpPath       => 'DeviceProperties',
        MbItemCategory.miscBoot     => 'Misc.Boot',
        MbItemCategory.miscSecurity => 'Misc.Security',
        MbItemCategory.nvramGuid    => 'NVRAM',
        MbItemCategory.platformInfo => 'PlatformInfo',
        MbItemCategory.uefiQuirk    => 'UEFI.Quirks',
      };

  Color _catColor(MbItemCategory cat) => switch (cat) {
        MbItemCategory.acpiAdd      => const Color(0xFF2196F3), // blue
        MbItemCategory.kextAdd      => const Color(0xFF9C27B0), // purple
        MbItemCategory.kernelPatch  => const Color(0xFFF44336), // red
        MbItemCategory.kernelQuirk  => const Color(0xFFFF9800), // orange
        MbItemCategory.booterQuirk  => const Color(0xFF009688), // teal
        MbItemCategory.dpPath       => const Color(0xFF1565C0), // dark blue
        MbItemCategory.miscBoot     => const Color(0xFF795548), // brown
        MbItemCategory.miscSecurity => const Color(0xFFE65100), // deep orange
        MbItemCategory.nvramGuid    => const Color(0xFF4CAF50), // green
        MbItemCategory.platformInfo => const Color(0xFF00BCD4), // cyan
        MbItemCategory.uefiQuirk    => const Color(0xFFE91E63), // pink
      };
}
