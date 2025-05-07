# Requer as bibliotecas necessárias para fazer web scraping
require "nokogiri"  # Biblioteca para parsear HTML
require "net/http"  # Biblioteca para fazer requisições HTTP

# Cria uma nova conexão HTTPS com o site onebitcode.com na porta 443
https = Net::HTTP.new("onebitcode.com", 443)
# Habilita SSL para conexões seguras
https.use_ssl = true

# Faz uma requisição GET para a página inicial do site
response = https.get("/")

# Usa o Nokogiri para parsear o HTML da resposta
doc = Nokogiri::HTML(response.body)

# Procura e extrai o conteúdo da primeira tag h1 encontrada na página
h1 = doc.at("h1")
puts h1.content

# Imprime uma linha de separação
puts "--------------------------------"

# Procura e extrai o conteúdo da primeira tag a encontrada na página
last_post = doc.at("h3 a")
# Imprime o conteúdo da tag a
puts last_post.content
# Imprime o href da tag a
puts last_post["href"]

puts "--------------------------------"

# Procura e extrai o conteúdo de todas as tags a encontradas na página
doc.search("h3 a").each do |a|
  puts a.content
  puts a["href"]
  puts " "
end
