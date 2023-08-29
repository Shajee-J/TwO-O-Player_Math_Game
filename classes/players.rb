class Player

  def initialize(name)
    @name = name
    @lives = 3
  end

  def fail
    @lives = @lives - 1
  end
  
  def lives_left
    "#{@lives}/3" 
  end

  attr_accessor :name :lives

end

