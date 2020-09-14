class Player

  def initialize(name)
    @name =name
    @lives =3
  end

  def dead?
    @lives <=0
  end
  
end