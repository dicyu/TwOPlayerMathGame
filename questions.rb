class Questions
  def initialize
    @number1 = rand(1..30)
    @number2 = rand(1..30)
    @sum = @number1 + @number2
  end

  def math_problem(name)
    puts "#{name[0]}: What is #{@number1} plus #{@number2}"
  end

  def checking_answer?(answer)
    @sum == answer
  end

end