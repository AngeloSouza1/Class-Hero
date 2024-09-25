# Classe que representa um herói de uma aventura
class Hero
  attr_accessor :nome, :idade, :tipo

  # Método construtor para inicializar as propriedades do herói
  def initialize(nome, idade, tipo)
    @nome = nome
    @idade = idade
    @tipo = tipo
  end

  # Método para simular um ataque do herói
  def atacar
    # Define o ataque com base no tipo do herói
    case @tipo.downcase
    when 'mago'
      ataque = 'usou magia'
    when 'guerreiro'
      ataque = 'usou espada'
    when 'monge'
      ataque = 'usou artes marciais'
    when 'ninja'
      ataque = 'usou shuriken'
    else
      ataque = 'atacou com uma habilidade desconhecida'
    end

    # Exibe a mensagem de ataque
    puts "O #{@tipo} atacou usando #{ataque}"
  end
end

# Exemplo de uso da classe Hero
# Criando instâncias de diferentes tipos de heróis
heroi1 = Hero.new('Gandalf', 2019, 'Mago')
heroi2 = Hero.new('Conan', 30, 'Guerreiro')
heroi3 = Hero.new('Shifu', 50, 'Monge')
heroi4 = Hero.new('Naruto', 20, 'Ninja')

# Chamando o método atacar para cada herói
heroi1.atacar  # Saída: O Mago atacou usando magia
heroi2.atacar  # Saída: O Guerreiro atacou usando espada
heroi3.atacar  # Saída: O Monge atacou usando artes marciais
heroi4.atacar  # Saída: O Ninja atacou usando shuriken
