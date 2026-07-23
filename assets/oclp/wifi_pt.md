# Suporte a Wi-Fi no macOS (Intel, Broadcom, Atheros)

### **Adaptadores Wi-Fi Suportados**:
1. **Intel Wi-Fi**: Suportado via [AirportItlwm](https://github.com/OpenIntelWireless/itlwm) ou [Itlwm + HeliPort](https://github.com/OpenIntelWireless/HeliPort).
2. **Broadcom Wi-Fi**: BCM94360, BCM94352, etc. (Exige OCLP no macOS Sonoma 14+).
3. **Atheros Wi-Fi**: Modelos antigos AR928x, AR9380 (Exige OCLP no macOS Monterey 12+).

---

### **Adaptadores Não Suportados**:
- Placas Wi-Fi PCIe da Realtek e TP-Link (somente adaptadores USB com driver do fabricante funcionam).
- Chipsets Broadcom BCM4312, BCM4313, BCM4356, BCM43142, BCM43228.

---

## Dicas de Configuração no RapidEFI:
- A seção **Wi-Fi** do RapidEFI aplica automaticamente kexts e patches de kernel para Intel, Broadcom e Atheros.
- No **macOS Sonoma 14.x e Sequoia 15.x**, além das kexts, é necessário aplicar o **Root Patch no OCLP** após a instalação do sistema.
