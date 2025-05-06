# Modificadores de Acesso em Ruby: private e protected

# Private: métodos que só podem ser chamados dentro da própria classe
# Protected: métodos que podem ser chamados por qualquer instância da classe ou suas subclasses

class Animal
  def initialize(nome)
    @nome = nome
  end

  # Método público (padrão)
  def falar
    puts "Olá, eu sou #{@nome}"
  end

  # Método protected
  protected

  def idade
    @idade ||= rand(1..10)
  end

  # Método private
  private

  def segredo
    puts "Este é um segredo do #{@nome}"
  end
end

class Cachorro < Animal
  def mostrar_idade
    # Pode acessar método protected da classe pai
    puts "Eu tenho #{idade} anos"
  end

  def tentar_segredo
    # Não pode acessar método private da classe pai
    # segredo  # Isso geraria um erro
  end
end

# Exemplo de uso
cachorro = Cachorro.new("Rex")
cachorro.falar        # Funciona: método público
cachorro.mostrar_idade # Funciona: método protected
# cachorro.segredo    # Erro: método private não pode ser chamado fora da classe
# cachorro.idade      # Erro: método protected não pode ser chamado fora da classe

# Comparação entre instâncias
cachorro2 = Cachorro.new("Buddy")
# cachorro.idade == cachorro2.idade  # Funciona: instâncias podem acessar métodos protected entre si
