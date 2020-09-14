class Player
  attr_reader :name
  attr_accessor :lives
  def initialize(name)
    @name =name
    @lives =3
  end

  def dead?
    @lives < 1
  end

  def wrong_answer
    @lives -=1
  end

  
end