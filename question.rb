require 'active_support/all'

class Question
  attr_reader :var_a
  attr_reader :var_b

  def initialize()
    @var_a = rand(19) + 1
    @var_b = rand(19) + 1
  end

  
end