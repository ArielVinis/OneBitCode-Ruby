# select hash

hash = {0 => "zero", 1 => "um", 2 => "dois", 3 => "três", 4 => "quatro"}

selection_key = hash.select do |key, value|
  key > 2
end

selection_value = hash.select do |key, value|
  value >= "três"
end

puts "Hash original: #{hash}"
puts "Keys selecionadas: #{selection_key}"
puts "Values selecionadas: #{selection_value}"
