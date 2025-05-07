# Exemplo de uso de blocos em Ruby
# Bloco com chaves {} - mais conciso, usado para operações simples
sum = 0
numbers = [1, 2, 3, 4, 5]

numbers.each { |number| sum += number }  # Bloco em uma linha usando chaves

puts sum  # Imprime a soma dos números: 15

puts "--------------------------------"

# Bloco com do/end - mais legível, usado para operações mais complexas
foo = { 2 => 3, 4 => 5 }  # Hash com chaves e valores

foo.each do |key, value|  # Bloco com múltiplas linhas usando do/end
  puts "key = #{key}"     # Imprime a chave
  puts "value = #{value}" # Imprime o valor
  puts "key * value = #{key * value}"  # Imprime o produto
  puts "--------------------------------"
end

def foo
  yield
  yield
end

foo { puts "Executando o block!" }

puts "--------------------------------"

def foo2
  if block_given?
    yield
  else
    puts "Não foi passado um block!"
  end
end

foo2
foo2 { puts "Executando o block!" }

puts "--------------------------------"

def foo3(name, &block)
  @name = name
  block.call
end

foo3("João") { puts "Olá, #{@name}!" }

puts "--------------------------------"
