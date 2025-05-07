# Operadores matemáticos

print "Digite o primeiro número: "
numero1 = gets.chomp.to_i

print "Digite o segundo número: "
numero2 = gets.chomp.to_i

# Calculando as operações
print "Escolha a operação: "
operacao = gets.chomp

if operacao == "+"
    puts "A soma de #{numero1} e #{numero2} é #{numero1 + numero2}"
elsif operacao == "-"
    puts "A subtração de #{numero1} e #{numero2} é #{numero1 - numero2}"
elsif operacao == "*"
    puts "A multiplicação de #{numero1} e #{numero2} é #{numero1 * numero2}"
elsif operacao == "/"
    puts "A divisão de #{numero1} e #{numero2} é #{numero1 / numero2}"
else
    puts "Operação inválida"
end

puts "Obrigado por usar o nosso sistema!"
