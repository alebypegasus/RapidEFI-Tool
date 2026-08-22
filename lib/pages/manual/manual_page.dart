import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:provider/provider.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/manual/manual_config_controller.dart';
import 'package:rapidefi/pages/manual/sections/manual_sections.dart';
import 'package:rapidefi/utils/config/build/efi_build_options.dart';
import 'package:rapidefi/utils/config/config_model.dart';
import 'package:rapidefi/utils/config/services/config_option_provider.dart';
import 'package:rapidefi/utils/config/services/config_session.dart';
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
    final l10n = AppLocalizations.of(context);
    _controller.activateSession();
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
        floatingActionButton: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.35),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ElevatedButton.icon(
            icon: const Icon(Icons.flash_on, color: Colors.white, size: 18),
            label: Text(
              l10n?.btnGenerateEfi ?? 'Generate EFI',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: const StadiumBorder(),
              elevation: 4,
            ),
            onPressed: () async {
              CustomToast.show(context, "Configuring EFI, please wait...");
              final success = await _controller.exportEfi(
                options: EfiBuildOptions(
                  acpiSourceDirectory: widget.acpiSourceDirectory,
                ),
              );
              CustomToast.dismiss();
              showToast(success
                  ? (l10n?.efiBuildSuccess ?? "EFI configured successfully")
                  : (l10n?.efiBuildFailed ?? "Error configuring EFI!\nPlease change the EFI output directory"));
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class _ManualPageBody extends StatelessWidget {
  const _ManualPageBody();

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select<ManualConfigController, bool>(
      (controller) => controller.isLoading,
    );

    if (isLoading) {
      return const Center(
        child: Text('Loading data...'),
      );
    }

    final children = ManualSections.children;

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 75),
      itemCount: children.length,
      itemBuilder: (_, index) => children[index],
    );
  }
}
