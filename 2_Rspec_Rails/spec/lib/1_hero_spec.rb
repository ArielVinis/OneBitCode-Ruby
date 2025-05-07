require 'spec_helper'
require '1_hero'

describe Hero do
    # Testa se o herói é inicializado com uma espada como arma padrão
    it "has a sword" do
        hero = Hero.new
        expect(hero.weapon).to eq("Sword")
    end

    # Testa se o herói tem mais de 1000 pontos de vida
    it "has more than 1000 health points" do
        hero = Hero.new
        expect(hero.health).to be >= 1000
    end
end
