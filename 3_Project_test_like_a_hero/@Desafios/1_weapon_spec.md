# 1 - Crie um model chamado Weapon com os seguintes atributos:
#
# name         :string   - nome da arma
# description  :text     - descrição da arma
# level        :integer  - level atual da arma (começando em 1)
# power_base   :integer  - pontos de poder quando a arma está no level 1 (ex: 3000)
# power_step   :integer  - pontos de poder que aumentam a cada level (ex: 100)
#
# Comando para gerar o model no terminal:
#
# rails generate model Weapon name:string description:text power_base:integer power_step:integer level:integer


# 2 - Crie os seguintes métodos no model Weapon:

# Método que retorna o poder atual da arma
def current_power
  power_base + ((level - 1) * power_step)
end

# Método que retorna o título da arma no formato "nome_da_arma #level_da_arma"
def title
  "#{name} ##{level}"
end
