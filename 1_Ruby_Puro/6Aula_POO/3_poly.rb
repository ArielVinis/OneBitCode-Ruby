
class Play
    def play
        puts "Playing..."
    end
end

class Guitar < Play
    def play
        puts "Playing guitar..."
    end
end

class Piano < Play
    def play
        puts "Playing piano..."
    end
end

# Instanciando a classe Guitar
guitar = Guitar.new
# Chamando o método play da classe Guitar
guitar.play

puts "--------------------------------"

# Instanciando a classe Piano
piano = Piano.new
# Chamando o método play da classe Piano
piano.play
