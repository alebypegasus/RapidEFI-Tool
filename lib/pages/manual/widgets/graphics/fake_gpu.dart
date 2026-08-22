import 'package:fluent_ui/fluent_ui.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/device_id_textfield.dart';
import 'package:rapidefi/pages/shared/widgets/path_textfield.dart';
import 'package:rapidefi/utils/hardware/analysis/gpu_compatibility_data.dart';
import 'package:rapidefi/utils/translation/hackintosh_details_translator.dart';

class FakeGPU extends StatefulWidget {
  const FakeGPU({
    super.key,
    this.onChanged,
    this.dgpuPath,
    this.dgpuFakeID,
  });

  final String? dgpuPath;
  final String? dgpuFakeID;
  final Function(String, String)? onChanged;

  @override
  State<FakeGPU> createState() => _FakeGPUState();
}

class _FakeGPUState extends State<FakeGPU> {
  late String dgpuPath = widget.dgpuPath ?? '';
  late String dgpuFakeID = widget.dgpuFakeID ?? '';
  late final TextEditingController _controllerPci =
      TextEditingController(text: dgpuPath);
  late final TextEditingController _controllerFakeId =
      TextEditingController(text: dgpuFakeID);
  final FocusNode _focusNodePci = FocusNode();
  final FocusNode _focusNodeFakeId = FocusNode();
  static const String placeholder = 'Select GPU device to spoof';
  String? _selectedComboBoxValue;
  late final Future<void> _gpuCompatibilityFuture =
      GpuCompatibilityData.ensureLoaded();

  static const String tip = r'''
AMD dGPU Spoofing (Device Properties):
 1. Enter the dGPU PCI Path, e.g.: PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)
 2. Enter the spoofed Device ID (4 hex chars), e.g.: 73BF
 3. Ensure appropriate boot-args are enabled (in dGPU Configuration -> AMD dGPU as needed)
 4. The tool includes built-in presets for common spoofed AMD GPUs
''';

  @override
  void initState() {
    super.initState();
    _selectedComboBoxValue = placeholder;
    _syncSelectedComboBoxValue();
  }

  @override
  void didUpdateWidget(covariant FakeGPU oldWidget) {
    super.didUpdateWidget(oldWidget);
    final nextPath = widget.dgpuPath ?? '';
    final nextFakeId = widget.dgpuFakeID ?? '';
    final keepLocalFakeId = dgpuFakeID.isNotEmpty && nextFakeId.isEmpty;
    if (nextPath == dgpuPath &&
        (nextFakeId == dgpuFakeID || keepLocalFakeId)) {
      return;
    }

    dgpuPath = nextPath;
    _controllerPci.text = dgpuPath;
    if (!keepLocalFakeId) {
      dgpuFakeID = nextFakeId;
      _controllerFakeId.text = dgpuFakeID;
      _syncSelectedComboBoxValue();
    }
  }

  @override
  void dispose() {
    _controllerPci.dispose();
    _controllerFakeId.dispose();
    _focusNodePci.dispose();
    _focusNodeFakeId.dispose();
    super.dispose();
  }

  void _syncSelectedComboBoxValue({
    List<GpuCompatibilityRecord>? records,
  }) {
    if (dgpuFakeID.isEmpty) {
      _selectedComboBoxValue = placeholder;
      return;
    }

    final normalizedFakeId = dgpuFakeID.toUpperCase();
    final candidates = records ??
        (GpuCompatibilityData.isLoaded
            ? GpuCompatibilityData.amdIdentityOverrideRecordsSync()
            : const <GpuCompatibilityRecord>[]);
    for (final record in candidates) {
      if (record.id == _selectedComboBoxValue &&
          (record.spoofDeviceIdPart ?? '').toUpperCase() ==
              normalizedFakeId) {
        return;
      }
    }

    for (final record in candidates) {
      if ((record.spoofDeviceIdPart ?? '').toUpperCase() == normalizedFakeId) {
        _selectedComboBoxValue = record.id;
        return;
      }
    }

    _selectedComboBoxValue = placeholder;
  }

  void _emitChanged() {
    widget.onChanged?.call(_controllerPci.text, _controllerFakeId.text);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              HackintoshDetailsTranslator.translate(tip.trim(), context: context),
              style: const TextStyle(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 15,
              children: [
                Text(
                  l10n?.pciPathLabel ?? 'dGPU PCI Path:',
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Flexible(
                  child: IntrinsicWidth(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 120,
                        maxWidth: 600,
                      ),
                      child: PathTextField(
                        pathType: PathType.pci,
                        hintText: l10n?.pciPathPlaceholder ?? 'Enter PCI Path',
                        onChanged: (value, _) {
                          _controllerPci.text = value;
                          _emitChanged();
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 15,
                children: [
                  Text(
                    l10n?.spoofedDeviceIdLabel ?? 'Spoofed Device ID:',
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  DeviceIdTextField(
                    controller: _controllerFakeId,
                    focusNode: _focusNodeFakeId,
                    onChanged: (value, _) {
                      setState(() {
                        dgpuFakeID = value;
                        _selectedComboBoxValue = placeholder;
                      });
                      _emitChanged();
                    },
                  ),
                  const SizedBox(width: 20),
                  Flexible(child: _buildIdentityOverrideGpuCombo(l10n)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIdentityOverrideGpuCombo(AppLocalizations? l10n) {
    return FutureBuilder<void>(
      future: _gpuCompatibilityFuture,
      builder: (context, snapshot) {
        final records = snapshot.connectionState == ConnectionState.done &&
                !snapshot.hasError &&
                GpuCompatibilityData.isLoaded
            ? GpuCompatibilityData.amdIdentityOverrideRecordsSync()
            : const <GpuCompatibilityRecord>[];

        if (records.isNotEmpty &&
            _selectedComboBoxValue == placeholder &&
            dgpuFakeID.isNotEmpty) {
          _syncSelectedComboBoxValue(records: records);
        }

        final value = records.any((record) => record.id == _selectedComboBoxValue)
            ? _selectedComboBoxValue
            : placeholder;
        final placeholderText =
            snapshot.hasError ? (l10n?.failed ?? 'Failed to load') : (l10n?.spoofedDeviceIdPlaceholder ?? placeholder);

        return ComboBox<String>(
          isExpanded: false,
          value: value,
          items: [
            ComboBoxItem(
              value: placeholder,
              child: Text(placeholderText),
            ),
            ...records.map((record) {
              final gpuName = record.name.isNotEmpty ? record.name : record.id;
              final label = '$gpuName  :  [${record.id}]';
              return ComboBoxItem(
                value: record.id,
                child: Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }),
          ],
          onChanged: (info) {
            GpuCompatibilityRecord? record;
            if (info != null && info != placeholder) {
              for (final item in records) {
                if (item.id == info) {
                  record = item;
                  break;
                }
              }
            }
            setState(() {
              _selectedComboBoxValue = info ?? placeholder;
              dgpuFakeID = record?.spoofDeviceIdPart ?? '';
              _controllerFakeId.text = dgpuFakeID;
            });
            _emitChanged();
          },
        );
      },
    );
  }
}
