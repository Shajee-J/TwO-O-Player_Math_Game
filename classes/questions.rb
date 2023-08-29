class Questions 

  def initialize 
    num1 = rand(100)
    num2 = rand(100)
    @question = "What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2 
  end

  attr_accessor :question, :answer

end 

# q = Questions.new
# p q.question
# p q.answer