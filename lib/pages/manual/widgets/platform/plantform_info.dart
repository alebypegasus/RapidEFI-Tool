import 'package:fluent_ui/fluent_ui.dart';
import 'package:rapidefi/pages/manual/model/platform_entity.dart';
import 'package:rapidefi/pages/shared/widgets/hackintosh_info_widget.dart';
import 'package:rapidefi/pages/shared/widgets/tip_switch.dart';
import 'package:rapidefi/pages/shared/widgets/title_card.dart';

class PlantFormInfoWidget extends StatefulWidget {
  final List<String> infos;
  final int selectedIndex;
  final bool isMobileCometLake;
  final bool showMobileComet;
  final PlatformEntity platformEntity;
  final Function(String?, int) onChanged;
  final ValueChanged? onCometLakeChange;

  const PlantFormInfoWidget({
    super.key,
    required this.infos,
    required this.platformEntity,
    required this.onChanged,
    this.onCometLakeChange,
    this.selectedIndex = 0,
    this.isMobileCometLake = false,
    this.showMobileComet = false,
  });

  @override
  State<PlantFormInfoWidget> createState() => _PlantFormInfoWidgetState();
}

class _PlantFormInfoWidgetState extends State<PlantFormInfoWidget> {
  late int selectedIndex = _safeIndex(widget.selectedIndex);
  late bool isMobileCometLake = widget.isMobileCometLake;

  int _safeIndex(int index) {
    if (widget.infos.isEmpty) {
      return 0;
    }

    if (index < 0) {
      return 0;
    }

    if (index >= widget.infos.length) {
      return widget.infos.length - 1;
    }

    return index;
  }

  @override
  void didUpdateWidget(covariant PlantFormInfoWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    final infosChanged = oldWidget.infos.length != widget.infos.length ||
        oldWidget.infos.join('|') != widget.infos.join('|');

    final selectedIndexChanged =
        oldWidget.selectedIndex != widget.selectedIndex;

    final mobileCometChanged =
        oldWidget.isMobileCometLake != widget.isMobileCometLake;

    if (infosChanged || selectedIndexChanged) {
      selectedIndex = _safeIndex(widget.selectedIndex);
    }

    if (mobileCometChanged) {
      isMobileCometLake = widget.isMobileCometLake;
    }
  }

  @override
  Widget build(BuildContext context) {
    final hasInfos = widget.infos.isNotEmpty;
    final currentValue = hasInfos ? widget.infos[selectedIndex] : null;

    return TitleCard(
      title: "Platform Info:",
      subTitle: "",
      content: LayoutBuilder(
        builder: (context, constraints) {
          final isCompact = constraints.maxWidth < 620;

          final comboBox = ComboBox<String>(
            isExpanded: isCompact,
            value: currentValue,
            items: widget.infos.map((e) {
              return ComboBoxItem(
                value: e,
                child: Text(
                  e,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }).toList(),
            onChanged: (info) {
              if (info == null) {
                return;
              }

              final nextIndex = widget.infos.indexOf(info);

              if (nextIndex < 0 || nextIndex == selectedIndex) {
                return;
              }

              setState(() {
                selectedIndex = nextIndex;
              });

              widget.onChanged.call(info, selectedIndex);
            },
          );

          if (isCompact) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: constraints.maxWidth,
                  child: comboBox,
                ),
                if (widget.showMobileComet) ...[
                  const SizedBox(height: 8),
                  TipSwitch(
                    tip:
                        "10th Gen Comet Lake U62 CPUs (e.g. i3-10110U, i5-10210U, i5-10310U,\n i7-10510U, i7-10610U, i7-10710U, i7-10810U), please check this option!",
                    title: 'U62 CPU',
                    checked: isMobileCometLake,
                    onChanged: (value) {
                      setState(() {
                        isMobileCometLake = value;
                      });

                      widget.onCometLakeChange?.call(isMobileCometLake);
                    },
                  ),
                ],
              ],
            );
          }

          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              comboBox,
              const SizedBox(width: 10),
              if (widget.showMobileComet)
                TipSwitch(
                  tip:
                      "10th Gen Comet Lake U62 CPUs (e.g. i3-10110U, i5-10210U, i5-10310U,\n i7-10510U, i7-10610U, i7-10710U, i7-10810U), please check this option!",
                  title: 'U62 CPU',
                  checked: isMobileCometLake,
                  onChanged: (value) {
                    setState(() {
                      isMobileCometLake = value;
                    });

                    widget.onCometLakeChange?.call(isMobileCometLake);
                  },
                ),
            ],
          );
        },
      ),
      expander: HackintoshInfoWidget(
        key: ValueKey(widget.platformEntity.hashCode),
        platformEntity: widget.platformEntity,
      ),
    );

  }
}
