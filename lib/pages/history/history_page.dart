import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:rapidefi/extension/int_extension.dart';
import 'package:rapidefi/pages/manual/manual_page.dart';
import 'package:rapidefi/pages/history/history_event_notifier.dart';
import 'package:rapidefi/pages/history/model/history_model.dart';
import 'package:rapidefi/utils/config/build/efi_build_options.dart';
import 'package:rapidefi/utils/config/build/efi_build_pipeline.dart';
import 'package:rapidefi/utils/config/config_model.dart';
import 'package:rapidefi/utils/config/services/config_service.dart';
import 'package:rapidefi/utils/config/services/config_session.dart';
import 'package:rapidefi/utils/constant.dart';
import 'package:rapidefi/utils/file_util.dart';
import 'package:rapidefi/utils/theme.dart';
import 'package:rapidefi/widgets/custom_toast.dart';
import 'package:oktoast/oktoast.dart';
import 'package:sp_util/sp_util.dart';
import 'package:rapidefi/pages/history/widgets/history_widget.dart';
import 'package:rapidefi/pages/shared/widgets/title_card.dart';

/// History
class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => HistoryPageState();
}

class HistoryPageState extends State<HistoryPage> {
  final ScrollController _historyScrollController = ScrollController();

  List<HistoryModel> historyModels = <HistoryModel>[];

  bool _loading = true;
  bool _openingManualPage = false;
  bool _exporting = false;
  bool _deletingAll = false;
  ConfigModel? _editingConfigModel;
  late final HistoryEventNotifier _historyEventNotifier;

  @override
  void initState() {
    super.initState();
    _historyEventNotifier = HistoryEventNotifier.instance;
    _historyEventNotifier.addListener(_handleHistoryChanged);
    loadHistoryModels();
  }

  @override
  void dispose() {
    _historyEventNotifier.removeListener(_handleHistoryChanged);
    _historyScrollController.dispose();
    super.dispose();
  }

  void _handleHistoryChanged() {
    if (!mounted) return;
    loadHistoryModels();
  }

  /// Load local history records
  Future<void> loadHistoryModels({bool showLoading = false}) async {
    if (showLoading && mounted) {
      setState(() {
        _loading = true;
      });
    }

    var models = <HistoryModel>[];

    try {
      models = SpUtil.getObjList(
            Constant.historyConfigModel,
            (value) => HistoryModel.fromJson(value as Map<String, dynamic>),
          ) ??
          <HistoryModel>[];

      models.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    } catch (error, stackTrace) {
      debugPrint('loadHistoryModels failed: $error');
      debugPrintStack(stackTrace: stackTrace);
    }

    if (!mounted) return;

    setState(() {
      historyModels = models;
      _loading = false;
    });
  }

  Future<ConfigModel> loadConfigModel(HistoryModel historyModel) {
    return FileUtils.readFromFile(
      directoryPath: _historyStorageName(historyModel),
    );
  }

  Future<void> produceEFIWithConfigModel(
    ConfigModel configModel,
    HistoryModel historyModel,
  ) async {
    if (!mounted) return;

    CustomToast.show(this.context, "Generating EFI, please wait...");
    final success = await EfiBuildPipeline(ConfigService()).build(
      configModel: configModel,
      mode: ConfigModelMode.history,
      options: EfiBuildOptions(
        efiNameOverride: historyModel.name,
        saveHistory: false,
      ),
    );
    CustomToast.dismiss();
    showToast(success ? "EFI generated successfully" : "Error generating EFI!\nPlease select a different output path");
  }

  Future<void> exportEFI(HistoryModel historyModel) async {
    if (_exporting) return;

    _exporting = true;

    try {
      final configModel = await loadConfigModel(historyModel);

      if (!mounted) return;

      await produceEFIWithConfigModel(configModel, historyModel);
    } catch (error, stackTrace) {
      debugPrint('exportEFI failed: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      _exporting = false;
    }
  }

  /// Update history record
  Future<void> updateHistoryModel(HistoryModel historyModel) async {
    final models = List<HistoryModel>.from(historyModels)
      ..sort((a, b) => b.timestamp.compareTo(a.timestamp));

    _saveHistoryModels(models);

    if (!mounted) return;

    setState(() {
      historyModels = models;
    });
  }

  /// Delete history record
  Future<void> deleteHistory(HistoryModel historyModel) async {
    final targetKey = _historyStorageName(historyModel);
    final historyDirectory = await FileUtils.getHistoryDirectory();
    final historyFile = join(historyDirectory, targetKey);

    try {
      await FileUtils.deleteFile(historyFile);
    } catch (error, stackTrace) {
      debugPrint('deleteHistory file failed: $error');
      debugPrintStack(stackTrace: stackTrace);
    }

    final models = historyModels
        .where((item) => _historyStorageName(item) != targetKey)
        .toList()
      ..sort((a, b) => b.timestamp.compareTo(a.timestamp));

    _saveHistoryModels(models);

    if (!mounted) return;

    setState(() {
      historyModels = models;
    });
  }

  /// Delete all history records
  Future<void> deleteAllHistories() async {
    if (_deletingAll || historyModels.isEmpty) return;

    _deletingAll = true;

    try {
      final historyDirectory = await FileUtils.getHistoryDirectory();
      await FileUtils.deleteFilesAndDirectories(historyDirectory);

      _saveHistoryModels(<HistoryModel>[]);

      if (!mounted) return;

      setState(() {
        historyModels = <HistoryModel>[];
      });
    } catch (error, stackTrace) {
      debugPrint('deleteAllHistories failed: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      _deletingAll = false;
    }
  }

  /// Open edit page for selected history model.
  Future<void> gotoManualPage(HistoryModel historyModel) async {
    if (_openingManualPage) return;

    _openingManualPage = true;

    try {
      final configModel = await loadConfigModel(historyModel);

      if (!mounted) return;

      setState(() {
        _editingConfigModel = configModel;
      });
    } catch (error, stackTrace) {
      debugPrint('gotoManualPage failed: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      _openingManualPage = false;
    }
  }

  void _exitManualPage() {
    if (_editingConfigModel == null) return;

    setState(() {
      _editingConfigModel = null;
    });

    _reloadHistoryAfterExitManualPage();
  }

  void _reloadHistoryAfterExitManualPage() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      loadHistoryModels();
    });
  }

  void _saveHistoryModels(List<HistoryModel> models) {
    SpUtil.putObjectList(
      Constant.historyConfigModel,
      models.map((item) => item.toJson()).toList(),
    );
  }

  String _historyStorageName(HistoryModel historyModel) {
    return '${historyModel.path}-${historyModel.timestamp.yyyy_MM_dd_HH_mm_ss()}';
  }

  @override
  Widget build(BuildContext context) {
    // Keep theme listener
    context.watch<AppTheme>();

    final editingConfigModel = _editingConfigModel;

    if (editingConfigModel != null) {
      return _HistoryManualPage(
        configModel: editingConfigModel,
        onBack: _exitManualPage,
      );
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TitleCard(
              title: 'History',
              content: _buildClearAllAction(),
              expander: const Text(
                'EFIs generated with RapidEFI are automatically backed up to history.\n'
                'You can reload and adjust any previously generated EFI at any time.\n\n'
                'This feature is supported on RapidEFI V3.0.0 and above.',
              ),
            ),
          ),
          Expanded(
            child: _buildBody(),
          ),
        ],
      ),
    );
  }

  Widget _buildClearAllAction() {
    final disabled = historyModels.isEmpty || _deletingAll;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Material(
        color: Colors.grey.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(6),
        child: InkWell(
          onTap: disabled ? null : deleteAllHistories,
          borderRadius: BorderRadius.circular(6),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 6,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.delete_forever,
                  color: disabled ? Theme.of(this.context).disabledColor : null,
                ),
                const SizedBox(width: 6),
                Text(
                  _deletingAll ? 'Clearing history...' : 'Clear All History',
                  style: TextStyle(
                    color:
                        disabled ? Theme.of(this.context).disabledColor : null,
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    if (_loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (historyModels.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Text('No history records yet'),
        ),
      );
    }

    return _buildHistoryList();
  }

  Widget _buildHistoryList() {
    return Scrollbar(
      controller: _historyScrollController,
      child: SingleChildScrollView(
        controller: _historyScrollController,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: historyModels.map((historyModel) {
              return SizedBox(
                width: 180,
                child: KeyedSubtree(
                  key: ValueKey(_historyStorageName(historyModel)),
                  child: HistoryWidget(
                    historyModel: historyModel,
                    onChanged: gotoManualPage,
                    onDelete: deleteHistory,
                    onExport: exportEFI,
                    onUpdate: updateHistoryModel,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _HistoryManualPage extends StatelessWidget {
  const _HistoryManualPage({
    required this.configModel,
    required this.onBack,
  });

  final ConfigModel configModel;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Colors.transparent;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44),
        child: Material(
          color: backgroundColor,
          child: SafeArea(
            bottom: false,
            child: SizedBox(
              height: 44,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: onBack,
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Edit EFI',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 48),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ColoredBox(
        color: backgroundColor,
        child: ManualPage(
          configModel: configModel,
          configModelMode: ConfigModelMode.history,
        ),
      ),
    );
  }
}
