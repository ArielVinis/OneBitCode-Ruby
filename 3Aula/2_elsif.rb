# Estrutura de decisão

print "Digite sua nota: "
nota1 = gets.chomp.to_f

print "Digite sua nota: "
nota2 = gets.chomp.to_f

print "Digite sua nota: "
nota3 = gets.chomp.to_f

media = (nota1 + nota2 + nota3) / 3

if media >= 7
    puts "Você foi aprovado!"
elsif media >= 5
    puts "Você está de recuperação"
else
    puts "Você foi reprovado"
end

puts "Obrigado por usar o nosso sistema!"
exit