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
    
    puts "------ NEXT TERM --------"
    @players.rotate!
  end

  def game_status
    puts "  P1: #{@player1.lives}/3, P2: #{@player2.lives}/3"
  end

  def game_over
    @players.select {|player| player.dead?}.count>0
  end

  def winner
    winner  = @players.find {|player| !player.dead?}
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts " ---- GAME OVER -----"
    puts "Good bye!"
  end
  
  def evaluate(number, rm1, rm2)
    if number != rm1 + rm2
      puts "#{@players[0].name}: Seriously? No!"
      @players[0].wrong_answer
     else
      puts "#{@players[0].name}: YES! You are correct."
     end
  end

  def play

    while(!game_over) do
     rm = random_number
     rm2 = random_number2
     puts "#{@players[0].name}: what does #{rm} plus #{rm2} equal?"
     print ">" 
     number = gets.chomp.to_i
     evaluate(number, rm, rm2)
     if !game_over
      game_status
      next_round
     end
    end
   winner
  end

end