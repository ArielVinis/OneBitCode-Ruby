require 'net/http'
require 'json'

class Tradutor
  def initialize
    @base_url = 'https://translation.googleapis.com/language/translate/v2'
    @api_key = 'YOUR_API_KEY'
  end

  # 1. Traduzir texto
  # Texto
  def traduzir
    print "Digite o texto a ser traduzido: "
    texto = gets.chomp

    # Idioma de origem
    print "Digite o idioma de origem (ex: en, es, fr, etc.): "
    idioma_origem = gets.chomp

    # Idioma de destino
    print "Digite o idioma de destino (ex: en, es, fr, etc.): "
    idioma_traduzir = gets.chomp


    data_hora = Time.now.strftime("%d-%m-%y_%H:%M")

    # 2. Exibir na tela
    puts "Texto original: #{texto}"
    puts "Idioma de origem: #{idioma_origem}"
    puts "Idioma de destino: #{idioma_traduzir}"
    puts "Texto traduzido: #{JSON.parse(response)['responseData']['translatedText']}"


    puts "Salvando resposta em arquivo..."
    nome_arquivo = "traducao_#{data_hora}.txt"

    File.open(nome_arquivo, 'w') do |arquivo|
      arquivo.puts "Texto original: #{texto}"