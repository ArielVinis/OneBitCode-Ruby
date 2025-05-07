# Importando os arquivos necessários
require_relative 'mercado'
require_relative 'produto'

# Criando uma instância do produto Arroz
produto = Produto.new
produto.nome = 'Arroz'
produto.preco = 10

# Criando uma instância do mercado e realizando a compra do Arroz
mercado = Mercado.new(produto)
mercado.comprar

puts "--------------------------------"

# Criando uma instância do produto Feijão
produto2 = Produto.new
produto2.nome = 'Feijão'
produto2.preco = 9

# Criando uma instância do mercado e realizando a compra do Feijão
mercado2 = Mercado.new(produto2)
mercado2.comprar
