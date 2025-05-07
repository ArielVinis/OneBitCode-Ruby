# O self em Ruby é uma referência ao objeto atual
# Em métodos de classe (definidos com self.), self se refere à própria classe
# Em métodos de instância, self se refere à instância do objeto

class Pessoa
  def self.quem_sou_eu
    puts "Dentro do método de classe, self é: #{self}"
  end

  def quem_sou_eu
    puts "Dentro do método de instância, self é: #{self}"
  end
end

# Chamando método de classe
Pessoa.quem_sou_eu  # Saída: Dentro do método de classe, self é: Pessoa

# Chamando método de instância
pessoa = Pessoa.new
pessoa.quem_sou_eu  # Saída: Dentro do método de instância, self é: #<Pessoa:0x000...>
