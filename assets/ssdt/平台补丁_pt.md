## Patch de Plataforma (Platform Patch SSDT)

Para facilitar a identificação dos SSDTs necessários, o RapidSSDT lista automaticamente os SSDTs recomendados com base na plataforma (CPU Intel/AMD, tipo de dispositivo: Desktop, Notebook, Mini PC ou Servidor).

Ref: [Guia do Dortania para ACPI](https://dortania.github.io/Getting-Started-With-ACPI/ssdt-platform.html#desktop)

---

### Legenda do RapidSSDT:
- **Básico (Recomendado Oficial)**: Seleção obrigatória (núcleo).
- **Recomendado (Correção de Recursos)**: Recomendado conforme necessidade da placa-mãe.
- **Opcional (Melhorias)**: Recursos opcionais de aprimoramento.
- **Marcar Todos**: Seleciona automaticamente todos os SSDTs (núcleo, recomendado, opcional).
- **SSDT Customizada**: Gera SSDTs personalizadas sob medida usando a tabela DSDT/SSDT extraída do seu hardware.
- **SSDT Pré-configurada**: Gera SSDTs genéricas universais com base nas diretrizes oficiais da comunidade OpenCore.
