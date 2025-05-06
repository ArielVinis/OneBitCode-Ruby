# map

array = [1, 2, 3, 4, 5]

new_array = array.map do |element|
  element * 2
end

puts "Array original: #{array}"
puts "Array mapeado: #{new_array}"

puts "\n Exceutando .map! Multiplicando cada elemento por 2"
# .map! força a modificação do array original
array.map! do |element|
  element * 2
end

puts "Array modificado: #{array}"
