# Expressões Regulares (Regex) em Ruby
# Regex são padrões usados para encontrar correspondências em strings

# Exemplo básico de correspondência
texto = "Olá, meu nome é João e tenho 25 anos"
if texto =~ /João/
    puts "Encontrou o nome João"
end

# Métodos comuns de regex
# =~ : operador de correspondência
# match : retorna um objeto MatchData se encontrar correspondência
# scan : retorna um array com todas as correspondências

# Exemplos práticos:

# 1. Validando formato de email
email = "usuario@exemplo.com"
if email =~ /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
    puts "Email válido"
end

# 2. Extraindo números de uma string
texto = "Preço: R$ 99,90 e R$ 149,90"
precos = texto.scan(/\d+,\d+/)
puts "Preços encontrados: #{precos}"

# 3. Substituindo texto
texto = "O gato é preto e o gato é fofo"
novo_texto = texto.gsub(/gato/, "cachorro")
puts novo_texto

# 4. Validando formato de data
data = "25/12/2023"
if data =~ /^\d{2}\/\d{2}\/\d{4}$/
    puts "Formato de data válido"
end

# 5. Extraindo palavras específicas
texto = "Ruby é uma linguagem de programação dinâmica"
palavras = texto.scan(/\b\w{4,}\b/)  # palavras com 4 ou mais letras
puts "Palavras encontradas: #{palavras}"

# Caracteres especiais comuns em regex:
# . : qualquer caractere
# * : zero ou mais ocorrências
# + : uma ou mais ocorrências
# ? : zero ou uma ocorrência
# \d : dígito
# \w : caractere alfanumérico
# \s : espaço em branco
# ^ : início da string
# $ : fim da string
# [] : conjunto de caracteres
# () : grupo de captura
