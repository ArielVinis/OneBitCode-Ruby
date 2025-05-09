class Enemy < ApplicationRecord
    enum :kind, { goblin: 0, orc: 1, demon: 2, dragon: 3 }
    validates :level, numericality: { greater_than: 0, less_than: 99 }
    validates_presence_of :name, :power_base, :power_step, :level, :kind

    def current_power
        power_base + (power_step * (level - 1))
    end
end
