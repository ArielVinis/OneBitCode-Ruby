# select

array = [1, 2, 3, 4, 5, 6]

selection = array.select do |element|
  element % 2 == 0
end

puts "Array original: #{array}"
puts "Array selecionado: #{selection}"
