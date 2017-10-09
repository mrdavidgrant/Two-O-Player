require 'active_support/all'
require './question'

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

  def ask()
    question = Question.new()
    puts "#{@name}: What is the sum of #{question.var_a} plus #{question.var_b}?"
    response = gets.chomp
    if response.to_i == question.var_a + question.var_b
      puts "Correct!"
      tally(1)
    else
      puts "Seriously Incorrect!"
      loselife()
    end
  end

end