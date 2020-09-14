class Player

  attr_reader :name, :is_alive, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_a_life
    @lives -= 1
  end

  def is_alive
    if @lives > 0
      return true
    else
      return false
    end
  end

  def player_summary
    "#{@name}: #{@lives}/3"
  end

end