import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rapidefi/extension/int_extension.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/history/model/history_model.dart';
import 'package:rapidefi/utils/theme.dart';

class HistoryWidget extends StatefulWidget {
  final HistoryModel historyModel;
  final Function(HistoryModel)? onChanged;
  final Function(HistoryModel)? onUpdate;
  final Function(HistoryModel)? onDelete;
  final Function(HistoryModel)? onExport;

  const HistoryWidget({
    super.key,
    required this.historyModel,
    this.onUpdate,
    this.onDelete,
    this.onExport,
    this.onChanged,
  });

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  late bool isHovered;
  late String updateName = '';

  @override
  void initState() {
    super.initState();
    isHovered = false;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final appTheme = context.watch<AppTheme>();
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Stack(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              widget.onChanged?.call(widget.historyModel);
            },
            child: IntrinsicHeight(
              child: Card(
                elevation: 1,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Text(
                          widget.historyModel.name.isEmpty
                              ? widget.historyModel.fileName
                              : widget.historyModel.name,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.date_range,
                            size: 14,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Text(
                              widget.historyModel.timestamp.yyyy_MM_dd_HHmmss(),
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: Visibility(
              visible: isHovered,
              child: Container(
                height: 34,
                decoration: BoxDecoration(
                  color: appTheme.accentColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Tooltip(
                      message: l10n?.renameEfiTooltip ?? 'Rename EFI',
                      child: IconButton(
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return fluent.ContentDialog(
                                title: Text(l10n?.renameCurrentEfi ?? 'Rename Current EFI'),
                                content: fluent.InfoLabel(
                                  label: '${l10n?.currentEfiNamePrefix ?? 'Current EFI Name: '}${widget.historyModel.name}',
                                  child: fluent.Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: fluent.SizedBox(
                                      height: 40,
                                      child: fluent.TextBox(
                                        placeholder: l10n?.enterNewName ?? 'Enter new name',
                                        onChanged: (value) {
                                          if (value.isNotEmpty) {
                                            updateName = value;
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                actions: [
                                  fluent.FilledButton(
                                    child: Text(l10n?.btnConfirm ?? 'Confirm'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      if (updateName.isNotEmpty) {
                                        widget.historyModel.name = updateName;
                                      }
                                      widget.onUpdate
                                          ?.call(widget.historyModel);
                                    },
                                  ),
                                  fluent.Button(
                                    child: Text(l10n?.btnCancel ?? 'Cancel'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Tooltip(
                      message: l10n?.btnDeleteRecord ?? 'Delete this record',
                      child: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          widget.onDelete?.call(widget.historyModel);
                        },
                      ),
                    ),
                    Tooltip(
                      message: l10n?.btnExportEfi ?? 'Export EFI',
                      child: IconButton(
                        icon: const Icon(
                          Icons.output,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          widget.onExport?.call(widget.historyModel);
                        },
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

