# Explicação do Script Whats.rb

Este script é uma automação para o WhatsApp Web que permite enviar mensagens repetidamente para uma conversa. Vou explicar como ele funciona:

## Funcionamento do Script

1. **Inicialização**:
   - O script abre o Chrome em modo normal (não headless)
   - Configura o navegador para maximizar a janela e desabilitar notificações
   - Acessa automaticamente o WhatsApp Web

2. **Tempo de Preparação**:
   - Aguarda 20 segundos para você escanear o QR Code
   - Espera mais 10 segundos para garantir que a conversa esteja carregada

3. **Loop de Envio**:
   - Procura a caixa de mensagem usando diferentes seletores
   - Envia a mensagem "Gay" repetidamente
   - Mantém um contador de mensagens enviadas
   - Aguarda 1 segundo entre cada envio

## Características Importantes

- O script usa a biblioteca Watir para automação web
- Implementa múltiplos seletores para maior confiabilidade
- Mostra feedback no terminal sobre o progresso
- Pode ser interrompido fechando o terminal

## Observações de Uso

- Mantenha a conversa do WhatsApp Web aberta
- Certifique-se de ter uma conexão estável
- O script continuará enviando até ser interrompido
- Para personalizar a mensagem, altere a variável `mensagem`

## Requisitos Técnicos

- Ruby instalado
- Gems: watir e webdrivers
- Google Chrome instalado
- Conexão com internet
