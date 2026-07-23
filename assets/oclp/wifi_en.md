# Wi-Fi Support in macOS (Intel, Broadcom, Atheros)

### **Supported Wi-Fi Adapters**:
1. **Intel Wi-Fi**: Supported via [AirportItlwm](https://github.com/OpenIntelWireless/itlwm) or [Itlwm + HeliPort](https://github.com/OpenIntelWireless/HeliPort).
2. **Broadcom Wi-Fi**: BCM94360, BCM94352, etc. (Requires OCLP on macOS Sonoma 14+).
3. **Atheros Wi-Fi**: Legacy models AR928x, AR9380 (Requires OCLP on macOS Monterey 12+).

---

### **Unsupported Wi-Fi Adapters**:
- Realtek & TP-Link PCIe Wi-Fi cards (only USB dongles with third-party drivers are supported).
- Broadcom chipsets: BCM4312, BCM4313, BCM4356, BCM43142, BCM43228.

---

## Configuration Tips in RapidEFI:
- The **Wi-Fi** section of RapidEFI automatically injects required kexts and kernel patches.
- On **macOS Sonoma 14.x and Sequoia 15.x**, after setup, you must run **Root Patch in OCLP** to restore full Wi-Fi support.
