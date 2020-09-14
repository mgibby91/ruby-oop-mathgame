class Game

  attr_reader :players, :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def run_game
    while(not game_over)
      puts ""
      puts "----- NEW TURN -----"
      puts ""
      player = @players[0]
      question = Question.new(player)
      puts question.display_question
      question.player_answer
      puts "#{player.player_summary} vs. #{@players[1].player_summary}"

      if player.is_alive == true
        @players.rotate!
      else
        break
      end
    end

    puts "#{@players[1].name} wins with a score of #{@players[1].lives}/3"
    puts ""
    puts "----- GAME OVER -----"
    puts ""
    puts "Goodbye!"
  end

  def game_over
    if @players[0].is_alive == true
      return false
    else
      return true
    end
  end

  def winner
    @players.select do |player|
      return player.alive?
    end
  end

end