# Exibe uma mensagem de boas-vindas ao usuário
puts "Bem-vindo ao sistema de lista de compras!"

# Abre o arquivo shopping_list.txt para leitura
file = File.open('shopping_list.txt')

# Itera sobre cada linha do arquivo e exibe seu conteúdo
file.each do |line|
    puts line
end

# Confirma que a lista foi carregada com sucesso
puts "Lista de compras carregada com sucesso!"
