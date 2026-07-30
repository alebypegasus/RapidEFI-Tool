import 'dart:io';

import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/title_card.dart';
import 'package:rapidefi/utils/config/config_model.dart';
import 'package:rapidefi/utils/config/services/config_session.dart';
import 'package:rapidefi/utils/file_util.dart';
import 'package:rapidefi/widgets/inkwell_widget.dart';
import 'package:rapidefi/pages/manual/manual_page.dart';
import 'package:rapidefi/pages/process/process_viewmodel.dart';

class ProcessPage extends StatelessWidget {
  const ProcessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProcessViewModel(),
      child: const _ProcessPageContent(),
    );
  }
}

class _ProcessPageContent extends StatelessWidget {
  const _ProcessPageContent();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TitleCard(
              title: l10n.processEfiTitle,
              content: _buildImportHeader(context, l10n),
              expander: Text(l10n.processEfiExpanderText),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: _buildContent(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImportHeader(BuildContext context, AppLocalizations l10n) {
    final viewModel = context.watch<ProcessViewModel>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            l10n.processEfiSubTitle,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 12),
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 6,
          children: [
            _buildActionButton(
              context: context,
              text: l10n.clearCurrentConfig,
              enabled: viewModel.hasConfigModel && !viewModel.importing,
              onTap: viewModel.clearConfigModel,
            ),
            _buildActionButton(
              context: context,
              text: viewModel.importing ? l10n.importingConfigModel : l10n.importConfigModelFile,
              enabled: !viewModel.importing,
              onTap: () => _pickAndImportConfigModel(context),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required BuildContext context,
    required String text,
    required bool enabled,
    required VoidCallback onTap,
  }) {
    final backgroundColor = enabled
        ? Colors.grey.withValues(alpha: 0.1)
        : Colors.grey.withValues(alpha: 0.05);

    return InkWellWidget(
      width: 140,
      height: 36,
      radius: 8,
      backgroundColor: backgroundColor,
      onTap: enabled ? onTap : null,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 11,
          color: enabled ? null : Theme.of(context).disabledColor,
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final viewModel = context.read<ProcessViewModel>();
    return DropTarget(
      onDragDone: (details) => _handleDragDone(context, details),
      onDragEntered: (_) => viewModel.setHighlighted(true),
      onDragExited: (_) => viewModel.setHighlighted(false),
      child: _buildDropTargetBody(context),
    );
  }

  Widget _buildDropTargetBody(BuildContext context) {
    final viewModel = context.watch<ProcessViewModel>();
    final configModel = viewModel.configModel;

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      switchInCurve: Curves.easeOutCubic,
      switchOutCurve: Curves.easeInCubic,
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 0.05),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
      },
      child: configModel != null
          ? Stack(
              key: const ValueKey('loaded'),
              children: [
                Positioned.fill(
                  child: _buildManualPage(viewModel, configModel),
                ),
                if (viewModel.highlighted || viewModel.importing)
                  Positioned.fill(
                    child: IgnorePointer(
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 120),
                        curve: Curves.easeOut,
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.08),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 1.5,
                          ),
                        ),
                        child: Center(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.12),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 12,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (viewModel.importing) ...[
                                    const SizedBox(
                                      width: 14,
                                      height: 14,
                                      child: CircularProgressIndicator(strokeWidth: 2),
                                    ),
                                    const SizedBox(width: 10),
                                  ],
                                  Text(
                                    viewModel.importing
                                        ? AppLocalizations.of(context)!.importingConfigModel
                                        : AppLocalizations.of(context)!.releaseToReimport,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            )
          : _buildEmptyDropArea(context, viewModel),
    );
  }

  Widget _buildManualPage(ProcessViewModel viewModel, ConfigModel configModel) {
    return ManualPage(
      key: ValueKey<int>(viewModel.configRevision),
      configModel: configModel,
      configModelMode: ConfigModelMode.process,
      acpiSourceDirectory: viewModel.acpiSourceDirectory,
    );
  }

  Widget _buildEmptyDropArea(BuildContext context, ProcessViewModel viewModel) {
    final l10n = AppLocalizations.of(context)!;
    return InkWell(
      key: const ValueKey('empty_drop_area'),
      borderRadius: BorderRadius.circular(8),
      onTap: viewModel.importing ? null : () => _pickAndImportConfigModel(context),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        curve: Curves.easeOut,
        decoration: BoxDecoration(
          color: viewModel.highlighted
              ? Colors.grey.withValues(alpha: 0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: viewModel.highlighted
                ? Theme.of(context).colorScheme.primary
                : Colors.grey.withValues(alpha: 0.2),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (viewModel.importing) ...[
                const SizedBox(
                  width: 14,
                  height: 14,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
                const SizedBox(width: 10),
              ],
              Text(
                viewModel.importing ? l10n.importingConfigModel : l10n.dragConfigModelArea,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handleDragDone(BuildContext context, DropDoneDetails detail) async {
    context.read<ProcessViewModel>().setHighlighted(false);
    
    if (detail.files.isEmpty) return;

    final file = detail.files.last;
    if (file.name != 'configModel') {
      return;
    }

    await _readConfigModelFromPath(context, file.path);
  }

  Future<void> _pickAndImportConfigModel(BuildContext context) async {
    final viewModel = context.read<ProcessViewModel>();
    if (viewModel.importing) return;

    final selectPath = await FileUtils.openFile('');
    if (selectPath.isEmpty) return;

    await _readConfigModelFromPath(context, selectPath);
  }

  Future<void> _readConfigModelFromPath(BuildContext context, String filePath) async {
    final viewModel = context.read<ProcessViewModel>();
    try {
      await viewModel.readConfigModelFromPath(filePath);
    } catch (e) {
      if (context.mounted) {
        showToast(AppLocalizations.of(context)?.importFailedToast ?? 'Import failed');
      }
    }
  }

}
