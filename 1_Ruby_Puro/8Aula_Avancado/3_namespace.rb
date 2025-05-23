module ReverseWorld
  def self.puts text
    print text.reverse.to_s
  end

  class Imprimir
    def call text
      print text
      print "--Imprimir--"
    end
  end
end

ReverseWorld::puts 'O resultado é'
puts "--------------------------------"

ReverseWorld::Imprimir.new.call 'O resultado é: '
# ou
imprimir = ReverseWorld::Imprimir.new
imprimir.call 'O resultado é: '
puts "--------------------------------"

puts 'O resultado é'
