# Exemplo de criação e uso de um Proc:
meu_proc = Proc.new { |nome| puts "Olá, #{nome}!" }
meu_proc.call("Ruby") # Saída: Olá, Ruby!

## Diferenças entre Proc e Lambda em Ruby

# 1. Tratamento de argumentos:
#   - Proc: Não verifica estritamente o número de argumentos. Argumentos faltantes recebem nil, e argumentos extras são ignorados.
#   - Lambda: Verifica estritamente o número de argumentos, gerando erro se a quantidade não for correta.

proc_exemplo = Proc.new { |a, b| puts "a: #{a}, b: #{b}" }
proc_exemplo.call(1)           # a: 1, b: 
proc_exemplo.call(1, 2, 3)     # a: 1, b: 2

lambda_exemplo = lambda { |a, b| puts "a: #{a}, b: #{b}" }
# lambda_exemplo.call(1)       # Erro: wrong number of arguments (given 1, expected 2)
lambda_exemplo.call(1, 2)      # a: 1, b: 2

# 2. Comportamento do return:
#   - Proc: Um return dentro de um Proc retorna do método que o contém, podendo encerrar o método externo.
#   - Lambda: Um return dentro de uma lambda retorna apenas da própria lambda, não do método externo.

def teste_proc
  p = Proc.new { return "Retornou do Proc" }
  p.call
  "Final do método"
end

def teste_lambda
  l = lambda { return "Retornou da Lambda" }
  l.call
  "Final do método"
end

puts teste_proc      # Saída: Retornou do Proc
puts teste_lambda    # Saída: Final do método

# 3. Sintaxe de criação:
#   - Proc: Proc.new { ... } ou proc { ... }
#   - Lambda: lambda { ... } ou -> { ... }

# Resumindo:
# - Procs são mais flexíveis com argumentos e podem afetar o fluxo do método externo.
# - Lambdas são mais estritas com argumentos e seu return afeta apenas a própria lambda.
