require './players.rb'
require './question.rb'
require './game.rb'

player1 = Player.new('Mario')
player2 = Player.new('Luigi')

game = Game.new(player1, player2)

puts "Starting new game..."
game.run_game
