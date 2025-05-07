# Classe Person que demonstra o uso do método construtor initialize
class Person
  # Método construtor que é chamado automaticamente quando criamos uma nova instância
  # Recebe dois parâmetros: name e age
  def initialize(name, age)
    @name = name  # Atribui o nome recebido ao atributo de instância @name
    @age = age    # Atribui a idade recebida ao atributo de instância @age
  end

  # Método que exibe os valores dos atributos da instância
  def check
    puts "Instância da classe iniciada com os valores:"
    puts "Name = #{@name}"  # Exibe o nome armazenado
    puts "Idade = #{@age}"  # Exibe a idade armazenada
  end
end

# Cria uma nova instância da classe Person passando os valores iniciais
person = Person.new('Ariel', 27)
# Chama o método check para exibir os valores
person.check
