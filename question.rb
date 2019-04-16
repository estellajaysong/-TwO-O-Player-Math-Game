class Question 
  attr_reader :sum, :num1, :num2

  def initialize
  @num1 = rand(1..20)
  @num2 = rand(1..20)
  @sum = @num1 + @num2
  end 

  def putsQuestion player
  puts "#{player}: What does #{num1} plus #{num2} equal?"
  end
end