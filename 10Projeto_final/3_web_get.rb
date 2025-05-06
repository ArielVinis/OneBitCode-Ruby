require 'net/http'

# Faz uma requisição HTTP GET para o site example.com
# example.com é usado para esses testes, mas pode ser qualquer site
example = Net::HTTP.get('www.google.com.br', '/')

# Cria um arquivo chamado 'example.html' e escreve o conteúdo da requisição nesse arquivo
File.open('google.html', 'w') do |line|
  line.puts(example)
end

puts "Arquivo 'google.html' salvo com sucesso!"
