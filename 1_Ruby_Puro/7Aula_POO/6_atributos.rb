# Primeira forma de definir atributos usando métodos getter e setter manualmente
class Dog
  # Método getter para acessar o nome
  def name
    @name
  end

  # Método setter para definir o nome
  def name=(name)
    @name = name
  end
end

dog = Dog.new
dog.name = 'Marlon'
puts dog.name

puts "--------------------------------"

# Segunda forma usando attr_accessor que cria automaticamente os métodos getter e setter
class Cat
  # attr_accessor cria automaticamente os métodos getter e setter para name e age
  attr_accessor :name, :age
end

cat = Cat.new
cat.name = 'Garfield'
puts cat.name

cat.age = '1 ano'
puts cat.age
