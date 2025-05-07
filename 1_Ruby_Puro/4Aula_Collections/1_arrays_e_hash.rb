# Arrays em Ruby
# Arrays são coleções ordenadas de elementos que podem conter diferentes tipos de dados
numeros = [1, 2, 3, 4, 5]
frutas = ["maçã", "banana", "laranja"]
misturado = [1, "texto", 3.14, true]

# Acessando elementos do array
puts numeros[0]    # Primeiro elemento (índice 0)
puts frutas[-1]    # Último elemento
puts misturado[1..3]  # Faixa de elementos

# Métodos úteis para arrays
numeros.push(6)    # Adiciona elemento no final
numeros << 7       # Outra forma de adicionar
numeros.pop        # Remove último elemento
numeros.shift      # Remove primeiro elemento
numeros.unshift(0) # Adiciona no início

# Hash em Ruby
# Hashes são coleções de pares chave-valor
pessoa = {
  nome: "João",
  idade: 25,
  cidade: "São Paulo"
}

# Acessando valores do hash
puts pessoa[:nome]     # Usando símbolo como chave
puts pessoa["idade"]   # Usando string como chave

# Adicionando e modificando elementos
pessoa[:profissao] = "Programador"
pessoa[:idade] = 26

# Métodos úteis para hashes
puts pessoa.keys       # Retorna array com todas as chaves
puts pessoa.values     # Retorna array com todos os valores
puts pessoa.has_key?(:nome)  # Verifica se existe a chave
puts pessoa.has_value?("João") # Verifica se existe o valor

# Iterando sobre arrays e hashes
numeros.each do |numero|
  puts numero * 2
end

pessoa.each do |chave, valor|
  puts "#{chave}: #{valor}"
end
