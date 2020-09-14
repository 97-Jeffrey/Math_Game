require_relative "./player"

class Game

  def initialize
    @player1 = Player.new("Jeffrey")
    @player2 = Player.new("Angela")
    @players=[@player1, @player2]
    
  end

  def random_number
    rand(20)
  end


  def next_round
    puts "------new turn--------"
  end

  def play
    puts "what does #{random_number} plus #{random_number} equal"
  end
end