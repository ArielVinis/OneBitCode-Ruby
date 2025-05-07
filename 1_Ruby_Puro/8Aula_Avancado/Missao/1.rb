# MISSÃO 1
# Criando uma lambda que recebe um nome e imprime com a primeira letra maiúscula
capitalize_lambda = lambda { |nome| puts nome.capitalize }

# Método que recebe uma lambda como parâmetro e a executa duas vezes com nomes diferentes
def capitalize_name(lambda_func)
  lambda_func.call("joão")  # Primeira chamada com o nome "joão"
  lambda_func.call("maria") # Segunda chamada com o nome "maria"
end

# Executando o método passando a lambda como argumento
capitalize_name(capitalize_lambda)