require 'os'

# 1. Verificar se o sistema operacional é Windows
puts "Sistema operacional: #{OS.windows? ? 'Está instalado o windows' : 'Não está instalado o windows'}"

# 2. Verificar se o sistema operacional é Linux
puts "Sistema operacional: #{OS.linux? ? 'Está instalado o linux' : 'Não está instalado o linux'}"

# 3. Verificar se o sistema operacional é Mac
puts "Sistema operacional: #{OS.mac? ? 'Está instalado o mac' : 'Não está instalado o mac'}"

puts "--------------------------------"

def my_os
    if OS.windows?
        "Windows"
    elsif OS.linux?
        "Linux"
    elsif OS.mac?
        "Mac"
    else
        "Não foi possível identificar o sistema operacional"
    end
end

puts "O sistema operacional é: #{my_os}"

puts "--------------------------------"
puts "Analisando o sistema operacional..."
puts "Sistema operacional: #{my_os}"

puts "Meu PC tem #{OS.cpu_count} cores"

puts "Meu PC possui #{OS.bits} bits"
