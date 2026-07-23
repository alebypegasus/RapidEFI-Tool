# OpenCore Legacy Patcher (OCLP-X)
![OpenCore Patcher Logo](images/OC-Patcher.png)

---

## O que é o OCLP?

O **OpenCore Legacy Patcher (OCLP)** é um projeto em Python desenvolvido em torno do [OpenCorePkg da Acidanthera](https://github.com/acidanthera/OpenCorePkg) e do [Lilu](https://github.com/acidanthera/Lilu), com o objetivo de executar e desbloquear recursos do macOS em computadores Mac e plataformas Hackintosh não suportadas oficialmente pela Apple.

### Utilidade Original
- Prover patches para Macs antigos descontinuados pela Apple, permitindo a instalação do macOS Big Sur, Monterey, Ventura, Sonoma, Sequoia e Tahoe 26.
- Fornecer kexts e patches de root para aceleração gráfica (Metal/non-Metal), Wi-Fi, Bluetooth e controle de energia.

### Aplicação em Hackintosh
- Drivers para placas de vídeo legadas ou AMD não suportadas nativamente.
- Patches de Wi-Fi / Bluetooth Broadcom, Intel e Atheros.
- Restauração do suporte de áudio `AppleHDA.kext` no macOS Tahoe 26.

---

## Recursos da Versão Modificada OCLP-X (por JeoJay)

- **Suporte Avançado a Wi-Fi Intel** no macOS Sequoia e Tahoe 26.
- **Suporte Extendido a Wi-Fi Atheros e Broadcom legados**.
- **Restauração do Driver de Áudio AppleHDA** no macOS Tahoe 26.
- **Suporte Nativo a Atualizações OTA (Online)**.
- **Compatibilidade com SIP (System Integrity Protection)** e FileVault 2.
