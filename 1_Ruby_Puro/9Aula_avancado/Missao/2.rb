# MISSÃO 2

class Carro
    def get_km
        puts "Um fusca de cor amarela viaja a #{@km}km/h."
    end

    private

    def find_km
        km = "80"
    end
end

# Cria uma instância da classe Carro
fusca = Carro.new
fusca.get_km

# A linha abaixo causa erro, pois find_km é um método privado
# fusca.find_km
