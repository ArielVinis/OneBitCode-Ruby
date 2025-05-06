# Criando uma classe para representar um local
def foo
    # Atributo para armazenar o nome do local
    local = "Local é acessada somente dentro do método"
    puts local
end

foo

puts "--------------------------------"
local = 12345
puts local
