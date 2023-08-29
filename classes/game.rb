class Game

  def initialize
    @players = [Player.new('Player 1'), Player.new('Player 2')]
    @current_player_index = 0
    @game_over = false
  end

  def current_player
    @players[@current_player_index]
  end

  def switch_turn
    @current_player_index = (@current_player_index + 1) % 2
  end

  def end?
    if (current_player === 0)
      @game_over = true
      switch_turn
      p "#{current_player.name} wins with a score of #{current_player.lives_left}" 
      p "----- GAME OVER -----"
      p "Good bye!"  
    end
  end

  def player_answer 
    player_answer = gets.chomp.to_i
  end

def start!
  until (game_over) do 
    questions = Questions.new
    p "#{current_player.name}: #{Question.question}"
        player_answer

    if (player_answer === Question.answer)
      p "#{current_player.name}: YES! you are correct."
    else 
      current_player.fail
      p "#{current_player.name}: Seriously? No!"
  end

  if (!end?)
p "P1: #{players[0].lives_left} vs P2: #{players[1].lives_left}"
switch_turn
  end

end