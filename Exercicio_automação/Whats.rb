require 'watir'
require 'webdrivers'

# Configura o caminho do ChromeDriver
Selenium::WebDriver::Chrome::Service.driver_path = '/usr/bin/chromedriver'

# Inicializa o navegador Chrome
browser = Watir::Browser.new :chrome
browser.goto 'https://web.whatsapp.com'
puts 'Por favor, escaneie o QR Code do WhatsApp Web e selecione a conversa desejada.'
sleep(20)

# Inicializa o contador
contador = 0
contador_max = 100
mensagem = "EU TE AMOOOOOOOOOOO (#{contador + 1})"

sleep(10)
while contador < contador_max
  # Tentando diferentes seletores para encontrar a caixa de mensagem
  caixa_mensagem = browser.div(xpath: '//div[@contenteditable="true"][@data-tab="10"]')
  if !caixa_mensagem.exists?
    caixa_mensagem = browser.div(xpath: '//footer//div[@contenteditable="true"]')
  end
  if !caixa_mensagem.exists?
    caixa_mensagem = browser.div(xpath: '//div[@role="textbox"]')
  end

  if caixa_mensagem.exists?
    caixa_mensagem.click
    caixa_mensagem.send_keys(mensagem)
    caixa_mensagem.send_keys(:enter)
    contador += 1
    puts "Mensagem enviada: #{mensagem} (#{contador}/#{contador_max})"
  else
    puts 'Caixa de mensagem nao encontrada. Verifique se a conversa esta aberta.'
    puts 'Tentando novamente em 10 segundos...'
    sleep(10)
  end
  sleep(1)
end

puts "Script finalizado! #{contador} mensagens foram enviadas."
browser.close
