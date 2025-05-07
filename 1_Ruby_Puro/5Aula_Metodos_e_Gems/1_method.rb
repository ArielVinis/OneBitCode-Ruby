# Definindo um método chamado 'talk' que recebe dois parâmetros: first_name e last_name
def talk(first_name, last_name)
  puts "Olá #{first_name} #{last_name}, como você está?"
end

# Chamando o método 'talk' com os argumentos "Ariel" e "Franca"
talk("Ariel", "Franca")

# Definindo um método de sinalização

def signal(color = "Vermelho")
  puts "O sinal está #{color}"
end

signal
signal("Vermelho")
signal("Verde")
signal("Amarelo")
