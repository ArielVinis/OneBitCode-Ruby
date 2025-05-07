# MISSÃO 1 

class Telefone
    def initialize(telefone)
        @telefone = telefone
    end

    def get_nome
        @nome
    end

    def get_telefone
        if @telefone.match(/(\d{2}) (\d{5})-(\d{4})/)
            puts "Telefone válido"
            puts "Olá, tudo bem? Meu whats app é #{@telefone}"
        else
            puts "Telefone inválido"
        end
    end
end

# Primeira forma: Usando gets.chomp
print "Digite seu nome: "
nome = gets.chomp

print "Digite seu telefone: "
telefone_input = gets.chomp
telefone1 = Telefone.new(telefone_input)
telefone1.get_telefone

# Segunda forma: Passando o nome e o número diretamente
telefone2 = Telefone.new("99 74321-1234")
telefone2.get_telefone
