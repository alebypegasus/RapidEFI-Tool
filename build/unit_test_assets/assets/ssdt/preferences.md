## Preferences Guide

Most options in Preferences should be kept at their default values.

<img src="images/options.png" alt="Options" width="100%" />

#### 1.1 iasl Mode:
- **Built-in**: Uses the integrated iasl tool to compile SSDTs (no internet required, works offline, recommended).
- **Remote**: Downloads remote iasl binaries and compiles SSDTs.

#### 1.2 iasl Compilation Type:
- **Modern iasl**: Uses modern iasl complying with the latest ACPI specifications.
- **Legacy iasl**: Uses legacy iasl tool for older ACPI specs (macOS 10.6 and earlier). Not recommended for modern systems.

#### 1.3 Delete Decompiled .dsl Files:
- **Yes**: Deletes intermediate `.dsl` source files after generating `.aml` binaries.
- **No**: Preserves generated `.dsl` files.

#### 1.4 Force Compilation:
- **Yes**: Ignores non-fatal errors and warnings to ensure `.aml` is compiled.
- **No**: Strict ACPI verification; fails compilation if issues are detected.

#### 1.5 Overwrite Target EFI:
- **Yes**: Directly replaces SSDTs and patches in the target EFI directory upon merge (creates backup of original `config.plist`).
- **No**: Outputs merged results to `Results` folder without modifying target EFI.
