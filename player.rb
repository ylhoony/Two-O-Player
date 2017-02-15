class Player

  attr_accessor :name
  attr_accessor :life

  def initialize (name)
    @name = name
    @life = 3
  end

  def name
    @name
  end

  def life
    @life
  end

end

player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")