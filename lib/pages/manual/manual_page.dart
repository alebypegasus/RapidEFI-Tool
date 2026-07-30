import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:provider/provider.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/pages/manual/manual_config_controller.dart';
import 'package:rapidefi/pages/manual/sections/manual_sections.dart';
import 'package:rapidefi/utils/config/build/efi_build_options.dart';
import 'package:rapidefi/utils/config/config_model.dart';
import 'package:rapidefi/utils/config/services/config_option_provider.dart';
import 'package:rapidefi/utils/config/services/config_session.dart';
import 'package:rapidefi/widgets/custom_floating_button_location.dart';
import 'package:rapidefi/widgets/inkwell_widget.dart';
import 'package:rapidefi/widgets/custom_toast.dart';
import 'package:oktoast/oktoast.dart';

class ManualPage extends StatefulWidget {
  const ManualPage({
    super.key,
    this.configModel,
    this.configModelMode = ConfigModelMode.manual,
    this.acpiSourceDirectory,
    this.onReady,
  });

  final ConfigModel? configModel;
  final ConfigModelMode configModelMode;
  final String? acpiSourceDirectory;
  final VoidCallback? onReady;

  @override
  State<ManualPage> createState() => _ManualPageState();
}

class _ManualPageState extends State<ManualPage> {
  late final ManualConfigController _controller;
  late final ConfigOptionProvider _configOptionProvider;
  bool _isGenerating = false;

  @override
  void initState() {
    super.initState();

    _controller = ManualConfigController();
    _configOptionProvider = ConfigOptionProvider();

    Future.microtask(() async {
      await _controller.initialize(
        widget.configModel,
        mode: widget.configModelMode,
      );
      if (!mounted) return;
      widget.onReady?.call();
    });
  }

  @override
  void dispose() {
    _configOptionProvider.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.activateSession();
    final l10n = AppLocalizations.of(context)!;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ManualConfigController>.value(
          value: _controller,
        ),
        ChangeNotifierProvider<ConfigOptionProvider>.value(
          value: _configOptionProvider,
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: const _ManualPageBody(),
        floatingActionButton: AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          child: InkWellWidget(
            width: _isGenerating ? 48 : 160,
            height: 48,
            radius: 24,
            backgroundColor: Theme.of(context).colorScheme.primary,
            onTap: _isGenerating
                ? null
                : () async {
                    setState(() => _isGenerating = true);
                    CustomToast.show(context, l10n.configuringEFI);
                    final success = await _controller.exportEfi(
                      options: EfiBuildOptions(
                        acpiSourceDirectory: widget.acpiSourceDirectory,
                      ),
                    );
                    CustomToast.dismiss();
                    if (mounted) {
                      setState(() => _isGenerating = false);
                      showToast(
                          success ? l10n.configureEFISuccess : l10n.configureEFIError);
                    }
                  },
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) => FadeTransition(
                opacity: animation,
                child: ScaleTransition(scale: animation, child: child),
              ),
              child: _isGenerating
                  ? const SizedBox(
                      key: ValueKey('generating_icon'),
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.5,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : Text(
                      l10n.generateEFI,
                      key: const ValueKey('generate_text'),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          ),
        ),
        floatingActionButtonLocation: CustomFloatingActionButtonLocation(15),
      ),
    );
  }
}

class _ManualPageBody extends StatelessWidget {
  const _ManualPageBody();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isLoading = context.select<ManualConfigController, bool>(
      (controller) => controller.isLoading,
    );

    const children = ManualSections.children;

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
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
      child: isLoading
          ? Center(
              key: const ValueKey('loading'),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2.5),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    l10n.loadingData,
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            )
          : ListView.builder(
              key: const ValueKey('content'),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: children.length,
              itemBuilder: (_, index) => children[index],
            ),
    );
  }
}
