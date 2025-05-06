class Animal
    def jump
        "To jumping"
    end

    def bark
        "Woof!"
    end

    def run
        "To running"
    end

    def sleep
        "To sleeping"
    end

    def eat
        "To eating"
    end
    
end

# Herança
class Dog < Animal
    def bark
        "Woof!"
    end
end

class Cat < Animal
    def bark
        "Meow!"
    end
end

# Instanciando a classe Dog
dog = Dog.new

puts "Cachorro"
puts dog.bark
puts dog.jump   
puts dog.run
puts dog.sleep
puts dog.eat

puts "--------------------------------"

# Instanciando a classe Cat
cat = Cat.new

puts "Gato"
puts cat.bark
puts cat.jump
puts cat.run
puts cat.sleep
puts cat.eat