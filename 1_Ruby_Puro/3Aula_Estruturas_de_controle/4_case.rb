print "Digite o número do mês que você nasceu: "
month = gets.chomp.to_i

case month
when 1
    puts "Talvez seu signo seja Capricórnio"
when 2
    puts "Talvez seu signo seja Aquário"
when 3
    puts "Talvez seu signo seja Peixes"
when 4
    puts "Talvez seu signo seja Áries"
when 5
    puts "Talvez seu signo seja Touro"
when 6
    puts "Talvez seu signo seja Gêmeos"
when 7
    puts "Talvez seu signo seja Câncer"
when 8
    puts "Talvez seu signo seja Leão"
when 9
    puts "Talvez seu signo seja Virgem"
when 10
    puts "Talvez seu signo seja Libra"
when 11
    puts "Talvez seu signo seja Escorpião"
when 12
    puts "Talvez seu signo seja Sagitário"
else
    puts "Mês inválido"
end

puts "Obrigado por usar o nosso sistema!"
