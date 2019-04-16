class Player
  attr_accessor :name, :short_name, :score

  def initialize name, short_name
    @name = name
    @short_name = short_name
    @score = 3
  end

  def getScore
    @score.to_s + "/3"
  end

end
