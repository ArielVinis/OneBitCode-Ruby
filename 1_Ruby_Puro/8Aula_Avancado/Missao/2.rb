module Person
    class Juridic
        def initialize(name, cnpj)
            @name = name
            @cnpj = cnpj
        end

        def add
            puts "Pessoa Jurídica Adicionada"
            puts "nome: #{@name}"
            puts "cnpj: #{@cnpj}"
        end
    end

    class Physical  
        def initialize(name, cpf)
            @name = name
            @cpf = cpf
        end

        def add
            puts "Pessoa Física Adicionada"
            puts "nome: #{@name}"
            puts "cpf: #{@cpf}"
        end
    end
end

mcInvestimentos = Person::Juridic.new('M. C. Investimentos', '4241.123/0001')
mcInvestimentos.add

puts "--------------------------------"
joseDaSilva = Person::Physical.new('José da Silva', '123.456.789-00')
joseDaSilva.add