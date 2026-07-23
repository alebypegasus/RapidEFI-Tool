## Preferências do RapidSSDT (Configurações do Compilador)

Geralmente, recomenda-se manter as opções padrão.

- **Modo iasl**: *Embutido (Recomendado)* — Utiliza o compilador IASL integrado offline.
- **Tipo de Compilação iasl**: *Novo iasl* — Compatível com as especificações ACPI modernas.
- **Excluir arquivos .dsl**: *Sim* — Exclui os arquivos intermediários .dsl após gerar o .aml compilado.
- **Compilação Forçada**: *Sim* — Ignora avisos secundários para garantir a geração dos arquivos .aml.
- **Substituir EFI de Destino**: *Sim* — Copia os SSDTs diretamente para a pasta EFI de destino com backup prévio do `config.plist`.
