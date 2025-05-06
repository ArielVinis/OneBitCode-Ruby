# each hash

Aulas = {"Aula 1" => "Introdução", "Aula 2" => "Variáveis e tipos de dados", "Aula 3" => "Arrays e Hashes"}

Aulas.each do |key, value|
  puts "#{key} => #{value}"
end
