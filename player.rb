class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name,
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def lost_game
    @lives == 0
  end

  def next_question
    next_question = Questions.new
    next_question.math_problem(name)
    print '>'
    @choice = $stdin.gets.chomp

    if next_question.checking_answer?(@choice.to_i)
      puts "Correct."
    else
      puts 'Wrong.'
      lose_life
    end
  end
end
