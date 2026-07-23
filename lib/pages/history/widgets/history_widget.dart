import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rapidefi/extension/int_extension.dart';
import 'package:rapidefi/pages/history/model/history_model.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:rapidefi/l10n/app_localizations.dart';
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
                      message: AppLocalizations.of(context)!.changeEfiTitle,
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
                                title: Text(AppLocalizations.of(context)!.modifyCurrentEfiName),
                                content: fluent.InfoLabel(
                                  label: AppLocalizations.of(context)!.originalEfiName(widget.historyModel.name),
                                  child: fluent.Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: fluent.SizedBox(
                                      height: 40,
                                      child: fluent.TextBox(
                                        placeholder: AppLocalizations.of(context)!.enterModifiedName,
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
                                    child: Text(AppLocalizations.of(context)!.confirm),
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
                                    child: Text(AppLocalizations.of(context)!.cancel),
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
                      message: AppLocalizations.of(context)!.deleteRecord,
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
                      message: AppLocalizations.of(context)!.exportThisEfi,
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
