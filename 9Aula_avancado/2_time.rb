# Manipulação de Data e Hora em Ruby
# A classe Time em Ruby permite trabalhar com datas e horas

# Criando um objeto Time
agora = Time.now
puts "Data e hora atual: #{agora}"

# Criando uma data específica
data_especifica = Time.new(2024, 3, 15, 14, 30, 0)
puts "Data específica: #{data_especifica}"

# Acessando componentes da data
puts "Ano: #{agora.year}"
puts "Mês: #{agora.month}"
puts "Dia: #{agora.day}"
puts "Hora: #{agora.hour}"
puts "Minuto: #{agora.min}"
puts "Segundo: #{agora.sec}"

# Formatação de data
puts "Data formatada: #{agora.strftime('%d/%m/%Y %H:%M:%S')}"

# Operações com datas
amanha = agora + (24 * 60 * 60)  # Adiciona 1 dia
puts "Amanhã: #{amanha}"

semana_passada = agora - (7 * 24 * 60 * 60)  # Subtrai 7 dias
puts "Semana passada: #{semana_passada}"

# Comparação de datas
if agora > data_especifica
    puts "A data atual é posterior à data específica"
end

# Diferença entre datas em segundos
diferenca = agora - data_especifica
puts "Diferença em segundos: #{diferenca}"

# Formatos de data comuns
puts "Data completa: #{agora.strftime('%A, %d de %B de %Y')}"
puts "Data curta: #{agora.strftime('%d/%m/%y')}"
puts "Hora: #{agora.strftime('%H:%M')}"

# Timezone
puts "Timezone atual: #{agora.zone}"
puts "UTC: #{agora.utc}"
