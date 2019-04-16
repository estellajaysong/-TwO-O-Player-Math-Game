require './turn'
require './player'

class Game
  attr_accessor :Player1, :Player2, :current_player, :waiting_player

  def initialize
    @Player1 = Player.new "Player 1", "P1"
    @Player2 = Player.new "Player 2", "P2"
    @current_player = @Player1
    @waiting_player = @Player2
  end


  def playGame
  while current_player.score > 0 && waiting_player.score > 0

  turn = Turn.new 
    if !turn.newTurn current_player.name
      current_player.score -= 1
    end
      puts "#{current_player.short_name}: #{current_player.getScore} vs #{@waiting_player.short_name}: #{@waiting_player.getScore}" 
      hold = @current_player
      @current_player = @waiting_player
      @waiting_player = hold
    end
    puts "#{current_player.name} wins with a score of #{current_player.getScore}"
    puts "----- GAME OVER -----"
    puts "Goodbye!"

  end



end


