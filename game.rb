class Player
  attr_reader :correct
  attr_accessor :health

  def initialize(name)
    @name = name
    @health = 3
    @correct = 0
  end

  

  def tally(n)
    @correct += n
  end

  def loselife()
    @health -= 1
  end

  def is_dead?
    @health <= 0
  end

end

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

until player1.is_dead? || player2.is_dead? do
  player1.question()
  player2.question()
  puts "The current score is Player 1: #{player1.correct} to Player 2: #{player2.correct}"
end

