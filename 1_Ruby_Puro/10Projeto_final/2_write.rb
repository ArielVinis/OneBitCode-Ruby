# Abre o arquivo em modo append ('a') para adicionar novos itens ao final
File.open('shopping_list.txt', 'a') do |line| 
  # Adiciona 'arroz' e 'feijão' cada um em uma nova linha usando puts
  line.puts('arroz')
  line.puts('feijão')
  
  # Adiciona 'azeite de oliva' na mesma linha usando print
  line.print('azeite')
  line.print(' de ')
  line.print('oliva')
end

# Confirma que os itens foram adicionados
puts "Itens adicionados com sucesso!"
