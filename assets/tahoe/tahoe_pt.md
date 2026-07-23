## 1. Instalação do macOS Tahoe 26: Quais ajustes fazer no OpenCore?

#### Siga rigorosamente os passos abaixo:

1. **Atualize o OpenCore**: Recomenda-se atualizar o gerenciador de boot OpenCore para a versão 1.0.7 ou superior, garantindo também que as kexts básicas (ex: Lilu, VirtualSMC, WhateverGreen) estejam sincronizadas na versão mais recente.

2. **Ajustes de USB**: Como o macOS Tahoe 26 alterou o mapeamento interno de portas USB, é necessário utilizar drivers de USB compatíveis:
   - **USBInjectAll.kext v1.0**: A ferramenta já traz a versão adaptada ao macOS Tahoe 26.
   - **USBToolBox.kext v1.2.0**: Compatível com o macOS Tahoe 26 juntamente com o mapa `UTBMap.kext`.

3. **Usuários de APU AMD Ryzen**: Desative temporariamente o `NootedRed.kext` e o `NootRX.kext` durante a fase de instalação. Ative-os novamente após concluir a instalação do sistema.

---

## 2. Quais plataformas são suportadas no macOS Tahoe 26?

1. **Plataformas Intel**:
   - Intel Core de 4ª Geração (Haswell) até 10ª Geração (Comet Lake).
   - *Nota*: CPUs Haswell exigem GPU dedicada AMD compatível (ex: RX 460 / RX 550 ou superior).

2. **Plataformas AMD**:
   - AMD Ryzen Séries 1000 a 9000.
   - iGPUs Ryzen (com `NootedRed.kext`) e dGPUs AMD dedicadas compatíveis.

---

## 3. Quais placas de vídeo são suportadas no macOS Tahoe 26?

1. **Intel iGPU**: 6ª Geração (Skylake - HD630) até 10ª Geração (Comet Lake).
2. **AMD dGPU**: Série RX 460, RX 550, RX 470/480/570/580/590, RX 5500/5600/5700, RX 6600/6800/6900 XT.
3. **GPUs NVIDIA**: Atualmente não possuem suporte no macOS Tahoe 26.

---

## 4. Suporte a Wi-Fi e Bluetooth no macOS Tahoe 26

1. **Intel Wi-Fi**:
   - **Opção 1**: Driver `itlwm.kext` + aplicativo cliente HeliPort.
   - **Opção 2**: Aplicação de patches via OCLP (OpenCore Legacy Patcher).
2. **Broadcom Wi-Fi**: Requer patch via OCLP.
3. **USB Wi-Fi**: Adaptadores USB com drivers atualizados.

---

## 5. Áudio no macOS Tahoe 26

1. **AppleALC.kext**: O macOS Tahoe removeu o `AppleHDA.kext` nativo. Para restaurar o suporte de áudio via AppleALC, aplique o patch de recuperação via OCLP-X.
2. **VoodooHDA.kext**: Solução alternativa universal para placas de áudio não suportadas via AppleALC.
3. **Áudio USB**: Dispositivos de áudio USB funcionam nativamente sem a necessidade de drivers adicionais.
