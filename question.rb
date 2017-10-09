require 'active_support/all'

def question()
  var_a = rand(19) + 1
  var_b = rand(19) + 1
  puts "#{@name}: What is the sum of #{var_a} plus #{var_b}?"
  response = gets.chomp
  if response.to_i == var_a + var_b
    puts "Correct!"
    tally(1)
  else
    puts "Seriously Incorrect!"
    loselife()
  end
end