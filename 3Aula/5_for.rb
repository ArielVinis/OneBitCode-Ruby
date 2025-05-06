fruits = ["Maçã", "Uva", "Banana", "Pera"]
count = 1

for fruit in fruits
    puts "Fruta número #{count}: #{fruit}"
    count += 1
end
puts "Total de frutas: #{fruits.count}"
puts "--------------------------------"

# Utilizando o método each_with_index para iterar sobre o array
# e obter o índice e o valor de cada elemento
fruits.each_with_index do |fruit, index|
    puts "Fruta número #{index + 1}: #{fruit}"
end
puts "Total de frutas: #{fruits.length}"
puts "--------------------------------"

# Utilizando o método each para iterar sobre o array
# e obter o valor de cada elemento
fruits.each do |fruit|
    puts "Fruta: #{fruit}"
end
puts "--------------------------------"
