class Game
  def initialize(name)
    @name = name
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  def winner(player)
    puts "#{player.name[0]} wins the game with a score of #{player.lives}/3"
    exit(0)
  end

  def show_score
    puts "---------"
    puts "The score is currently, Player 1: #{@player1.lives}/3 vs Player 2: #{@player2.lives}/3"
    puts "---------"
  end

  def score_check
    if @player1.lost_game
      winner(@player2)
    elsif @player2.lost_game
      winner(@player1)
    end
  end

  def game_turn
    @player1.next_question
    score_check
    @player2.next_question
    score_check
    show_score
    game_turn
  end
end
