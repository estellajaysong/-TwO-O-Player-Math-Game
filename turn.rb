require './question'
require './player'

class Turn

  def newTurn player
    question = Question.new
    question.putsQuestion player
    answer = gets.chomp
    if answer.to_i == question.sum
      puts "#{player}:  YES! You are correct."
      true
    else 
      puts "#{player}:  Seriously? No!"
      false
    end
  end

end
