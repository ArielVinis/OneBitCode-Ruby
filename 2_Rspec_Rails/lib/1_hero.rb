# Classe que representa um herói com arma e pontos de vida
class Hero
    # Permite ler e modificar o atributo weapon
    attr_accessor :weapon, :health

    # Inicializa o herói com uma espada como arma padrão
    def initialize
        @weapon = "Sword"
        @health = 1000
    end
end
