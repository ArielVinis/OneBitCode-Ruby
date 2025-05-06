# Estrutura de checkagem

print "Digite o preço do produto: "
product_price = gets.chomp.to_f

unless product_price > 100
    puts "O produto está barato"
else
    puts "O produto está caro"
end

puts "Obrigado por usar o nosso sistema!"
