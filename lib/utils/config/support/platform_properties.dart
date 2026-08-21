import 'package:rapidefi/utils/config/models/device_properties/device_property_item.dart';

// iGPU Property Configuration
DevicePropertyItem _deviceProperty(
  String key,
  String dataType,
  String value,
  String comment, {
  bool display = true,
}) {
  return DevicePropertyItem(
    key: key,
    dataType: dataType,
    value: value,
    comment: comment,
    display: display,
  );
}

DevicePropertyItem get framebuffer_patch_enable => _deviceProperty(
      'framebuffer-patch-enable',
      'data',
      '01000000',
      "Master switch to enable iGPU Framebuffer patching",
    );
DevicePropertyItem get framebuffer_unifiedmem_1536 => _deviceProperty(
      'framebuffer-unifiedmem',
      'data',
      '00000060',
      "Set VRAM to 1536MB (1.5GB VRAM, Apple default, for 3rd~10th Gen Intel iGPUs)",
    );
DevicePropertyItem get framebuffer_unifiedmem_2048 => _deviceProperty(
      'framebuffer-unifiedmem',
      'data',
      '00000080',
      "Set VRAM to 2048MB (2GB VRAM, tool default, for 3rd~10th Gen Intel iGPUs)",
    );
DevicePropertyItem get framebuffer_unifiedmem_3072 => _deviceProperty(
      'framebuffer-unifiedmem',
      'data',
      '000000C0',
      "Set VRAM to 3072MB (3GB VRAM, for 3rd~10th Gen Intel iGPUs)",
    );
DevicePropertyItem get framebuffer_unifiedmem_4095 => _deviceProperty(
      'framebuffer-unifiedmem',
      'data',
      '0000F0FF',
      "Set VRAM to 4095MB (4GB VRAM, for 3rd~10th Gen Intel iGPUs)",
    );
DevicePropertyItem get framebuffer_cursormem_1k => _deviceProperty(
      'framebuffer-cursormem',
      'data',
      '00009000',
      "Fix cursor artifacting on 4th Gen Haswell 1080P displays (Recommended for 1080P and below)",
    );
DevicePropertyItem get framebuffer_cursormem_2k4k => _deviceProperty(
      'framebuffer-cursormem',
      'data',
      '00000003',
      "Fix cursor artifacting on 4th Gen Haswell 2K/4K displays (Recommended for 2K/4K screens)",
    );
DevicePropertyItem get framebuffer_memorycount_2 => _deviceProperty(
      'framebuffer-memorycount',
      'data',
      '02000000',
      "Ivy Bridge high-resolution display patch",
    );
DevicePropertyItem get framebuffer_pipecount_2 => _deviceProperty(
      'framebuffer-pipecount',
      'data',
      '02000000',
      "Ivy Bridge high-resolution display patch",
    );
DevicePropertyItem get framebuffer_portcount_4 => _deviceProperty(
      'framebuffer-portcount',
      'data',
      '04000000',
      "Ivy Bridge high-resolution display patch",
    );
DevicePropertyItem get framebuffer_con0_enable => _deviceProperty(
      'framebuffer-con0-enable',
      'data',
      '01000000',
      "Enable con0 port patch",
    );
DevicePropertyItem get framebuffer_con1_enable => _deviceProperty(
      'framebuffer-con1-enable',
      'data',
      '01000000',
      "Enable con1 port patch",
    );
DevicePropertyItem get framebuffer_con2_enable => _deviceProperty(
      'framebuffer-con2-enable',
      'data',
      '01000000',
      "Enable con2 port patch",
    );
DevicePropertyItem get framebuffer_con3_enable => _deviceProperty(
      'framebuffer-con3-enable',
      'data',
      '01000000',
      "Enable con3 port patch",
    );
DevicePropertyItem get framebuffer_con1_alldata_ivy_high_res => _deviceProperty(
      'framebuffer-con1-alldata',
      'data',
      '020500000004000007040000030400000004000081000000040600000004000081000000',
      "Ivy Bridge high-resolution connector patch",
    );
DevicePropertyItem get framebuffer_aapl00_duallink => _deviceProperty(
      'AAPL00,DualLink',
      'data',
      '01000000',
      "Sandy Bridge laptop high-res display (1600x900+) patch",
    );
DevicePropertyItem get framebuffer_singlelink => _deviceProperty(
      'framebuffer-singlelink',
      'data',
      '01000000',
      "Ironlake/Arrandale laptop display patch",
    );
DevicePropertyItem get framebuffer_enable_hdmi20 => _deviceProperty(
      'enable-hdmi20',
      'data',
      '01000000',
      "Enable HDMI 2.0 (Forces HDMI 2.0 output for 4K@60Hz support)",
    );
DevicePropertyItem get framebuffer_hda_gfx => _deviceProperty(
      'hda-gfx',
      'string',
      'onboard-1',
      "Fix HDMI audio output (in addition to alcid)",
    );
DevicePropertyItem get framebuffer_disable_hdmi_patches => _deviceProperty(
      'disable-hdmi-patches',
      'data',
      '01000000',
      "Disable DP to HDMI conversion patches for digital audio",
    );
DevicePropertyItem get framebuffer_force_online => _deviceProperty(
      'force-online',
      'data',
      '01000000',
      "Force online status on all displays to prevent wake black screen or hotplug issues (Coffee Lake+)",
    );
DevicePropertyItem get framebuffer_rps_control => _deviceProperty(
      'rps-control',
      'data',
      '01000000',
      "Improve iGPU performance (fixes 4K HEVC encoding and framerate drops)",
    );
DevicePropertyItem get framebuffer_igfxfw => _deviceProperty(
      'igfxfw',
      'data',
      '02000000',
      "Enable full iGPU firmware loading (igfxfw=2) for higher utilization (Use with caution)",
    );
DevicePropertyItem get framebuffer_enable_hdmi_dividers_fix => _deviceProperty(
      'enable-hdmi-dividers-fix',
      'data',
      '01000000',
      "Fix HDMI external display freeze loop on 6th~8th Gen iGPUs",
    );
DevicePropertyItem get framebuffer_enable_cdclk_frequency_fix =>
    _deviceProperty(
      'enable-cdclk-frequency-fix',
      'data',
      '01000000',
      "Fix 10th Gen Ice Lake kernel crash caused by low CDCLK frequency",
    );
DevicePropertyItem get framebuffer_enable_dvmt_calc_fix => _deviceProperty(
      'enable-dvmt-calc-fix',
      'data',
      '01000000',
      "Fix 10th Gen Ice Lake kernel crash caused by DVMT pre-allocated memory calculation",
    );
DevicePropertyItem get framebuffer_enable_backlight_smoother => _deviceProperty(
      'enable-backlight-smoother',
      'data',
      '01000000',
      "Enable backlight smoother for smoother brightness slider transitions",
    );
DevicePropertyItem get framebuffer_enable_backlight_registers_alternative_fix =>
    _deviceProperty(
      'enable-backlight-registers-alternative-fix',
      'data',
      '01000000',
      "Fix 3-minute dark screen on boot for 7th~9th Gen laptops on macOS 13.4+",
    );
DevicePropertyItem get framebuffer_enable_backlight_registers_fix =>
    _deviceProperty(
      'enable-backlight-registers-fix',
      'data',
      '01000000',
      "Fix 3-minute dark screen on boot for 7th~9th Gen laptops on macOS 13.3 and below",
    );
DevicePropertyItem get framebuffer_enable_dbuf_early_optimizer =>
    _deviceProperty(
      'enable-dbuf-early-optimizer',
      'data',
      '01000000',
      "Fix 10th Gen Ice Lake laptop 7~15s boot glitch/distortion",
    );
DevicePropertyItem get framebuffer_enable_max_pixel_clock_override =>
    _deviceProperty(
      'enable-max-pixel-clock-override',
      'data',
      '01000000',
      "Fix 10th Gen Ice Lake iGPU HDMI 4K@60Hz / high-refresh no signal by overriding max pixel clock",
    );
DevicePropertyItem get framebuffer_aapl_GfxYTile => _deviceProperty(
      'AAPL,GfxYTile',
      'data',
      '01000000',
      "Fix iGPU glitching or tearing (e.g. HD 530)",
    );
DevicePropertyItem get framebuffer_disable_external_gpu => _deviceProperty(
      'disable-external-gpu',
      'data',
      '01000000',
      "Disable discrete GPU (recommended for laptops with unsupported dGPU)",
    );
DevicePropertyItem get framebuffer_enable_dpcd_max_link_rate_fix =>
    _deviceProperty(
      'enable-dpcd-max-link-rate-fix',
      'data',
      '01000000',
      "Fix laptop high-res eDP crash caused by incorrect max link rate (e.g. Dell XPS 15 9570)",
    );
DevicePropertyItem get framebuffer_aapl00_override_no_connect =>
    _deviceProperty(
      'AAPL00,override-no-connect',
      'data',
      '',
      "Inject display EDID into AAPL00 (internal display / port 0) to fix black screen (Requires EDID injected in EDID tab; mandatory on 500-series HDMI)",
    );
DevicePropertyItem get framebuffer_aapl01_override_no_connect =>
    _deviceProperty(
      'AAPL01,override-no-connect',
      'data',
      '',
      "Inject display EDID into AAPL01 (port 1) to fix black screen (Requires EDID injected in EDID tab; mandatory on 500-series HDMI)",
    );
DevicePropertyItem get framebuffer_aapl02_override_no_connect =>
    _deviceProperty(
      'AAPL02,override-no-connect',
      'data',
      '',
      "Inject display EDID into AAPL02 (port 2) to fix black screen (Requires EDID injected in EDID tab; mandatory on 500-series HDMI)",
    );
DevicePropertyItem get framebuffer_enable_lspcon_support => _deviceProperty(
      'enable-lspcon-support',
      'data',
      '01000000',
      "Enable LSPCON support (DisplayPort to HDMI 2.0 conversion for 6th~10th Gen)",
    );
DevicePropertyItem get framebuffer_framebuffer_con0_has_lspcon =>
    _deviceProperty(
      'framebuffer-con0-has-lspcon',
      'data',
      '01000000',
      "Port 0 LSPCON signal converter (requires LSPCON support)",
    );
DevicePropertyItem get framebuffer_framebuffer_con1_has_lspcon =>
    _deviceProperty(
      'framebuffer-con1-has-lspcon',
      'data',
      '01000000',
      "Port 1 LSPCON signal converter (requires LSPCON support)",
    );
DevicePropertyItem get framebuffer_framebuffer_con2_has_lspcon =>
    _deviceProperty(
      'framebuffer-con2-has-lspcon',
      'data',
      '01000000',
      "Port 2 LSPCON signal converter (requires LSPCON support)",
    );
DevicePropertyItem get framebuffer_framebuffer_con3_has_lspcon =>
    _deviceProperty(
      'framebuffer-con3-has-lspcon',
      'data',
      '01000000',
      "Port 3 LSPCON signal converter (requires LSPCON support)",
    );
DevicePropertyItem get framebuffer_fbmem => _deviceProperty(
      'framebuffer-fbmem',
      'data',
      '00009000',
      "Set framebuffer memory to 9MB (usually paired with stolenmem for high-res)",
    );
DevicePropertyItem get framebuffer_stolenmem_1k => _deviceProperty(
      'framebuffer-stolenmem',
      'data',
      '00003001',
      "Set stolen memory to 19MB (For 1080P displays)",
    );
DevicePropertyItem get framebuffer_stolenmem_2k => _deviceProperty(
      'framebuffer-stolenmem',
      'data',
      '00000004',
      "Set stolen memory to 64MB (For 2K / 4K displays)",
    );
DevicePropertyItem get framebuffer_stolenmem_4k => _deviceProperty(
      'framebuffer-stolenmem',
      'data',
      '00000008',
      "Set stolen memory to 128MB (For 4K displays)",
    );

List<DevicePropertyItem> get _enableHdmiCon0FixItems => [
      _deviceProperty(
        'framebuffer-con0-enable',
        'data',
        '01000000',
        "Enable con0 HDMI port (paired with port 0 HDMI connector)",
      ),
      _deviceProperty(
        'framebuffer-con0-type',
        'data',
        '00080000',
        "Port 0 HDMI connector type (fixes 6th~10th Gen HDMI black screen)",
      ),
    ];

List<DevicePropertyItem> get _enableHdmiCon1FixItems => [
      _deviceProperty(
        'framebuffer-con1-enable',
        'data',
        '01000000',
        "Enable con1 HDMI port (paired with port 1 HDMI connector)",
      ),
      _deviceProperty(
        'framebuffer-con1-type',
        'data',
        '00080000',
        "Port 1 HDMI connector type (fixes 6th~10th Gen HDMI black screen)",
      ),
    ];

List<DevicePropertyItem> get _enableHdmiCon2FixItems => [
      _deviceProperty(
        'framebuffer-con2-enable',
        'data',
        '01000000',
        "Enable con2 HDMI port (paired with port 2 HDMI connector)",
      ),
      _deviceProperty(
        'framebuffer-con2-type',
        'data',
        '00080000',
        "Port 2 HDMI connector type (fixes 6th~10th Gen HDMI black screen)",
      ),
    ];

class IgpuDevicePropertyOption {
  final String id;
  final String title;
  final String category;
  final String? exclusiveGroup;
  final String? multiSelectGroup;
  final String? mutexGroup;
  final List<DevicePropertyItem> items;

  const IgpuDevicePropertyOption({
    required this.id,
    required this.title,
    required this.category,
    required this.items,
    this.exclusiveGroup,
    this.multiSelectGroup,
    this.mutexGroup,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IgpuDevicePropertyOption && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

const igpuCategoryMemory = 'VRAM / DVMT Settings';
const igpuCategoryHaswell = '4th Gen Haswell Specific';
const igpuCategoryIvyBridge = '3rd Gen Ivy Bridge High-Res';
const igpuCategorySandyBridge = '2nd Gen Sandy Bridge High-Res';
const igpuCategoryArrandale = '1st Gen Arrandale Laptop';
const igpuCategoryHdmi = 'HDMI / Port Fixes';
const igpuCategoryIceLake = '10th Gen Ice Lake Fixes';
const igpuCategoryCommon = 'General Fixes';

IgpuDevicePropertyOption _option({
  required String id,
  required String title,
  required String category,
  required List<DevicePropertyItem> items,
  String? exclusiveGroup,
  String? multiSelectGroup,
  String? mutexGroup,
}) {
  return IgpuDevicePropertyOption(
    id: id,
    title: title,
    category: category,
    items: items,
    exclusiveGroup: exclusiveGroup,
    multiSelectGroup: multiSelectGroup,
    mutexGroup: mutexGroup,
  );
}

List<IgpuDevicePropertyOption> selectableIGPUDevicePropertyOptions() {
  final hdmiCon0Options = _enableHdmiCon0FixItems;
  final hdmiCon1Options = _enableHdmiCon1FixItems;
  final hdmiCon2Options = _enableHdmiCon2FixItems;

  return [
    _option(
      id: 'dvmt_32m_1080p',
      title: framebuffer_stolenmem_1k.comment ?? '',
      category: igpuCategoryMemory,
      exclusiveGroup: 'dvmt',
      items: [framebuffer_stolenmem_1k, framebuffer_fbmem],
    ),
    _option(
      id: 'stolenmem_2k',
      title: framebuffer_stolenmem_2k.comment ?? '',
      category: igpuCategoryMemory,
      exclusiveGroup: 'dvmt',
      items: [framebuffer_stolenmem_2k],
    ),
    _option(
      id: 'stolenmem_4k',
      title: framebuffer_stolenmem_4k.comment ?? '',
      category: igpuCategoryMemory,
      exclusiveGroup: 'dvmt',
      items: [framebuffer_stolenmem_4k],
    ),
    _option(
      id: 'unifiedmem_1536',
      title: framebuffer_unifiedmem_1536.comment ?? '',
      category: igpuCategoryMemory,
      exclusiveGroup: 'unifiedmem',
      items: [framebuffer_unifiedmem_1536],
    ),
    _option(
      id: 'unifiedmem_2048',
      title: framebuffer_unifiedmem_2048.comment ?? '',
      category: igpuCategoryMemory,
      exclusiveGroup: 'unifiedmem',
      items: [framebuffer_unifiedmem_2048],
    ),
    _option(
      id: 'unifiedmem_3072',
      title: framebuffer_unifiedmem_3072.comment ?? '',
      category: igpuCategoryMemory,
      exclusiveGroup: 'unifiedmem',
      items: [framebuffer_unifiedmem_3072],
    ),
    _option(
      id: 'unifiedmem_4095',
      title: framebuffer_unifiedmem_4095.comment ?? '',
      category: igpuCategoryMemory,
      exclusiveGroup: 'unifiedmem',
      items: [framebuffer_unifiedmem_4095],
    ),
    _option(
      id: 'haswell_cursormem_1080p',
      title: framebuffer_cursormem_1k.comment ?? '',
      category: igpuCategoryHaswell,
      exclusiveGroup: 'haswell_cursormem',
      items: [framebuffer_cursormem_1k],
    ),
    _option(
      id: 'haswell_cursormem_2k4k',
      title: framebuffer_cursormem_2k4k.comment ?? '',
      category: igpuCategoryHaswell,
      exclusiveGroup: 'haswell_cursormem',
      items: [framebuffer_cursormem_2k4k],
    ),
    _option(
      id: 'ivy_bridge_high_res',
      title: 'Ivy Bridge Laptop High-Res (1600x900+) Patch',
      category: igpuCategoryIvyBridge,
      items: [
        framebuffer_memorycount_2,
        framebuffer_pipecount_2,
        framebuffer_portcount_4,
        framebuffer_stolenmem_2k,
        framebuffer_con1_enable,
        framebuffer_con1_alldata_ivy_high_res,
      ],
    ),
    _option(
      id: 'sandy_bridge_duallink',
      title: framebuffer_aapl00_duallink.comment ?? '',
      category: igpuCategorySandyBridge,
      items: [framebuffer_aapl00_duallink],
    ),
    _option(
      id: 'ironlake_singlelink',
      title: framebuffer_singlelink.comment ?? '',
      category: igpuCategoryArrandale,
      items: [framebuffer_singlelink],
    ),
    _option(
      id: 'hdmi_con0_type',
      title: 'Enable con0 HDMI port type patch (Fixes 6th~10th Gen HDMI black screen, purple screen, audio)',
      category: igpuCategoryHdmi,
      multiSelectGroup: 'hdmi_type_patch',
      mutexGroup: 'hdmi_connector_mode',
      items: hdmiCon0Options,
    ),
    _option(
      id: 'hdmi_con1_type',
      title: 'Enable con1 HDMI port type patch (Fixes 6th~10th Gen HDMI black screen, purple screen, audio)',
      category: igpuCategoryHdmi,
      multiSelectGroup: 'hdmi_type_patch',
      mutexGroup: 'hdmi_connector_mode',
      items: hdmiCon1Options,
    ),
    _option(
      id: 'hdmi_con2_type',
      title: 'Enable con2 HDMI port type patch (Fixes 6th~10th Gen HDMI black screen, purple screen, audio)',
      category: igpuCategoryHdmi,
      multiSelectGroup: 'hdmi_type_patch',
      mutexGroup: 'hdmi_connector_mode',
      items: hdmiCon2Options,
    ),
    _option(
      id: 'ice_lake_dbuf_early_optimizer_fixes',
      title: framebuffer_enable_dbuf_early_optimizer.comment ?? '',
      category: igpuCategoryIceLake,
      items: [
        framebuffer_enable_dbuf_early_optimizer,
      ],
    ),
    _option(
      id: 'ice_lake_calc_fixes',
      title: framebuffer_enable_dvmt_calc_fix.comment ?? '',
      category: igpuCategoryIceLake,
      items: [
        framebuffer_enable_dvmt_calc_fix,
      ],
    ),
    _option(
      id: 'ice_lake_cdclk_fixes',
      title: framebuffer_enable_cdclk_frequency_fix.comment ?? '',
      category: igpuCategoryIceLake,
      items: [
        framebuffer_enable_cdclk_frequency_fix,
      ],
    ),
    _option(
      id: 'ice_lake_4k_clock',
      title: framebuffer_enable_max_pixel_clock_override.comment ?? '',
      category: igpuCategoryIceLake,
      items: [framebuffer_enable_max_pixel_clock_override],
    ),
    _option(
      id: 'hdmi20',
      title: framebuffer_enable_hdmi20.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_enable_hdmi20],
    ),
    _option(
      id: 'force_online',
      title: framebuffer_force_online.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_force_online],
    ),
    _option(
      id: 'rps_control',
      title: framebuffer_rps_control.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_rps_control],
    ),
    _option(
      id: 'igfxfw',
      title: framebuffer_igfxfw.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_igfxfw],
    ),
    _option(
      id: 'hda_gfx',
      title: framebuffer_hda_gfx.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_hda_gfx],
    ),
    _option(
      id: 'disable_hdmi_patches',
      title: framebuffer_disable_hdmi_patches.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_disable_hdmi_patches],
    ),
    _option(
      id: 'hdmi_dividers_fix',
      title: framebuffer_enable_hdmi_dividers_fix.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_enable_hdmi_dividers_fix],
    ),
    _option(
      id: 'backlight_smoother',
      title: framebuffer_enable_backlight_smoother.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_enable_backlight_smoother],
    ),
    _option(
      id: 'backlight_registers_alternative_fix',
      title:
          framebuffer_enable_backlight_registers_alternative_fix.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_enable_backlight_registers_alternative_fix],
    ),
    _option(
      id: 'backlight_registers_fix',
      title: framebuffer_enable_backlight_registers_fix.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_enable_backlight_registers_fix],
    ),
    _option(
      id: 'gfx_y_tile',
      title: framebuffer_aapl_GfxYTile.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_aapl_GfxYTile],
    ),
    _option(
      id: 'disable_external_gpu',
      title: framebuffer_disable_external_gpu.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_disable_external_gpu],
    ),
    _option(
      id: 'dpcd_max_link_rate_fix',
      title: framebuffer_enable_dpcd_max_link_rate_fix.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_enable_dpcd_max_link_rate_fix],
    ),
    _option(
      id: 'aapl00_override_no_connect',
      title: framebuffer_aapl00_override_no_connect.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_aapl00_override_no_connect],
    ),
    _option(
      id: 'aapl01_override_no_connect',
      title: framebuffer_aapl01_override_no_connect.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_aapl01_override_no_connect],
    ),
    _option(
      id: 'aapl02_override_no_connect',
      title: framebuffer_aapl02_override_no_connect.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_aapl02_override_no_connect],
    ),
    _option(
      id: 'lspcon_support',
      title: framebuffer_enable_lspcon_support.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_enable_lspcon_support],
    ),
    _option(
      id: 'con0_lspcon',
      title: framebuffer_framebuffer_con0_has_lspcon.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_framebuffer_con0_has_lspcon],
    ),
    _option(
      id: 'con1_lspcon',
      title: framebuffer_framebuffer_con1_has_lspcon.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_framebuffer_con1_has_lspcon],
    ),
    _option(
      id: 'con2_lspcon',
      title: framebuffer_framebuffer_con2_has_lspcon.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_framebuffer_con2_has_lspcon],
    ),
    _option(
      id: 'con3_lspcon',
      title: framebuffer_framebuffer_con3_has_lspcon.comment ?? '',
      category: igpuCategoryCommon,
      items: [framebuffer_framebuffer_con3_has_lspcon],
    ),
  ];
}

List<IgpuDevicePropertyOption> selectableIGPUDevicePropertyOptionsForPlatform(
  String platformCode,
) {
  return selectableIGPUDevicePropertyOptions();
}

Set<DevicePropertyItem> selectableIGPUDeviceProperties() {
  final deviceProperties = <String, DevicePropertyItem>{};
  for (final option in selectableIGPUDevicePropertyOptions()) {
    for (final item in option.items) {
      deviceProperties[_propertyIdentity(item)] = item;
    }
  }
  return deviceProperties.values.toSet();
}

String _propertyIdentity(DevicePropertyItem item) =>
    '${item.key}|${item.dataType}|${item.value}';

