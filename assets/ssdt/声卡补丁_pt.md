# Patch de Áudio SSDT-HPET

**Atenção: Destinado ao AppleALC (baseado no AppleHDA nativo). Não se aplica ao VoodooHDA.**

---

## 1. Verificar se Existe Conflito de IRQ no Áudio

Algumas placas-mãe sofrem com conflitos de IRQ no temporizador HPET/RTC/TIMR, impedindo a inicialização do driver de áudio `AppleHDA`, mesmo com o `alcid` correto.

### Comando do Terminal para Diagnóstico:
```bash
sudo kextstat | grep -E "AppleHDA|AppleALC|Lilu"
```
- Se o `AppleALC` estiver carregado, mas o `AppleHDA` **NÃO** aparecer, há conflito de IRQ! É necessário aplicar o patch `SSDT-HPET`.

---

## 2. Como Gerar o Patch SSDT-HPET
1. Extraia o ACPI do sistema.
2. Na aba **SSDT-HPET**, selecione **Executar Patch**.
3. Selecione o arquivo `config.plist` para mesclar as correções.
