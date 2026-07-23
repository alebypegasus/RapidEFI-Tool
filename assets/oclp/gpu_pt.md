## Precauções e Informações sobre Patch de GPU OCLP

1. A partir do **macOS Sequoia 15.x**, todas as GPUs baseadas na arquitetura 3802 exigem o [MetallibSupportPkg](https://github.com/dortania/MetallibSupportPkg/releases). Com conexão à internet, o OCLP processa isso automaticamente.
2. **GPUs que exigem Root Volume Patching com OpenCore Legacy Patcher (OCLP)**:
   - **NVIDIA**: Kepler (GTX 600 - 700), Tesla (8000 - 300).
   - **Intel**: Ivy Bridge (HD 4000), Haswell (HD 4400 / 4600 / Iris 5000), Broadwell (HD 6000), Skylake (HD 500).
   - **AMD**: TeraScale (HD 2000 - 6000), GCN 1-3 (HD 7000 - R9).

---

## Passos para Aplicar o Patch OCLP:
1. **Desativar SIP e AMFI**:
   - `csr-active-config`: `03080000` ou `FF0F0000` em `NVRAM -> Add -> 7C436110-AB2A-4BBB-A880-FE41995C9F82`.
   - `boot-args`: Adicionar `amfi=0x80` ou utilizar a kext `AMFIPass.kext`.
   - `SecureBootModel`: Definir como `Disabled` em `Misc -> Security`.
2. Baixar e instalar o [OpenCore-Patcher](https://github.com/JeoJay127/OCLP-X/releases).
3. Executar **Post-Install Root Patch -> Start Root Patching** e reiniciar a máquina.
