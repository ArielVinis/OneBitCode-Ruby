class Weapon < ApplicationRecord
    validates :name, length: { minimum: 3, maximum: 20 } # Nome da arma
    validates :description, length: { minimum: 5, maximum: 100 } # Descrição da arma
    validates :level, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 99 } # Nível da arma
    validates :power_base, numericality: { greater_than_or_equal_to: 0 } # Poder base da arma
    validates :power_step, numericality: { greater_than_or_equal_to: 0 } # Poder de ataque da arma

    def current_power
        power_base + ((level - 1) * power_step)
    end

    def title
        "#{name} ##{level}"
    end
    
end
