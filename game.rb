require_relative "./player"

class Game
  attr
  def initialize
    @player1 = Player.new("player1")
    @player2 = Player.new("player2")
    @players=[@player1, @player2]
    
  end

  def random_number
    rand(20)
  end

  def random_number2
    rand(20)
  end

  def next_round
    puts "------new turn--------"
  end

  def play
    rm = random_number
    rm2 = random_number2
    puts "#{@players[0].name}: what does #{rm} plus #{rm2} equal?"
    print ">" 
    number = gets.chomp.to_i
    total = rm + rm2
    if number != total
      puts "#{@players[0].name}: Seriously? No!"
     else
      puts "#{@players[0].name}: YES! You are correct."
    end
  end
end