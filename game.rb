class Game

  attr_reader :players, :current_player

  def initialize
    @current_player
    @players = []
  end

  def add_players(player1, player2)
    @players.push(player1)
    @players.push(player2)
  end

  def run_game

  end

  def game_over?
    if @current_player.is_alive? == true
      return false
    end
    return true
  end

  def winner
    @players.select do |player|
      return player.alive?
  end

end