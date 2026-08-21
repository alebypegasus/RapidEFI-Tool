## Brightness Patch Guide

- [1. Direct Extraction & Patching on Current Machine](#1-direct-extraction--patching-on-current-machine)
- [2. Patching Using Pre-dumped ACPIs](#2-patching-using-pre-dumped-acpis)

### 1. Direct Extraction & Patching on Current Machine

Workflow: **[Dump ACPI] -> [Function Patches] -> [SSDT-PNLF] -> [Select UID Type] -> [Execute Patch] -> [Select config] -> [Merge config]**

[Dump ACPI]:
<img src="images/dump-win-1.png" width="100%" />

[Function Patches] -> [SSDT-PNLF] -> [Select UID Type] -> [Execute Patch]:
<img src="images/SSDT-PNLF.png" width="100%" />

[Select config]:
<img src="images/select-config.png" width="100%" />

[Merge config]:
<img src="images/merge-ssdt-2.png" width="100%" />

### 2. Patching Using Pre-dumped ACPIs

Workflow: **[Select ACPIs] -> [Function Patches] -> [SSDT-PNLF] -> [Select UID Type] -> [Execute Patch] -> [Select config] -> [Merge config]**

[Select ACPIs]:
<img src="images/select-acpis.png" width="100%" />
