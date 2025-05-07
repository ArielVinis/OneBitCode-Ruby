# Mixins em Ruby - Exemplo de jogo de luta

module Lutador
  def soco
    puts "Soco forte!"
  end

  def chute
    puts "Chute alto!"
  end
end

module Especial
  def poder_especial
    puts "Poder especial ativado!"
  end
end

class Personagem
  include Lutador
  include Especial
  
  def initialize(nome)
    @nome = nome
  end

  def apresentar
    puts "Lutador: #{@nome}"
  end
end

# Criando personagens
ryu = Personagem.new("Ryu")
ken = Personagem.new("Ken")

# Testando os métodos
ryu.apresentar
ryu.soco
ryu.chute
ryu.poder_especial

puts "-------------------"

ken.apresentar
ken.chute
ken.chute
ken.poder_especial
