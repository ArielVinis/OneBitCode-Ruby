# Exemplo de lambda em Ruby
soma = lambda { |a, b| a + b }
puts soma.call(5, 3)  # Imprime 8

puts "--------------------------------"

# Outro exemplo com múltiplos parâmetros
multiplicacao = ->(x, y) { x * y }
puts multiplicacao.call(4, 2)  # Imprime 8

puts "--------------------------------"

# Lambda com condicional
maior_que = lambda { |num| num > 10 ? "Maior que 10" : "Menor ou igual a 10" }
puts maior_que.call(15)  # Imprime "Maior que 10"
puts maior_que.call(5)   # Imprime "Menor ou igual a 10"

puts "--------------------------------"

# Lambda em um array
numeros = [1, 2, 3, 4, 5]
dobro = lambda { |n| n * 2 }
numeros_dobrados = numeros.map(&dobro)
puts numeros_dobrados  # Imprime [2, 4, 6, 8, 10]
