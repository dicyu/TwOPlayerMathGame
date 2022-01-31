class Player
  attr_reader :name :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_lose
    @lives -= 1
  end

  def lost_game
    @lives == 0
  end
  
end
