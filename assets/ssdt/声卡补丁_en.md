# SSDT-HPET Audio Patch

**Note: Applicable to AppleALC (AppleHDA native driver). Not applicable to VoodooHDA.**

---

## 1. Checking for Audio IRQ Conflicts

On certain motherboards, IRQ conflicts on HPET/RTC/TIMR timers prevent `AppleHDA` from loading even with the correct `alcid`.

### Terminal Command for Diagnosis:
```bash
sudo kextstat | grep -E "AppleHDA|AppleALC|Lilu"
```
- If `AppleALC` is loaded but `AppleHDA` is **NOT** present, an IRQ conflict exists. You need to create an `SSDT-HPET` patch.

---

## 2. Generating SSDT-HPET Patch
1. Extract ACPI from system.
2. Under **SSDT-HPET**, click **Execute Patch**.
3. Select `config.plist` to merge ACPI patches.
