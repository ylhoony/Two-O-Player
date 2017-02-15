class Player

  attr_accessor :name, :life

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