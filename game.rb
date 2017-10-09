require './player'
require './question'

@player1 = Player.new('Player 1')
@player2 = Player.new('Player 2')

until @player1.is_dead? || @player2.is_dead? do
  @player1.ask()
  @player2.ask()
  puts "The current score is Player 1: #{@player1.correct} to Player 2: #{@player2.correct}"
end

if @player1.is_dead?
  puts "Player 1 has gotten three wrong, game over!"
else
  puts "Player 2 has gotten three wrong, game over!"
end