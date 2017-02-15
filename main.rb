# require all files
require_relative 'player'
# require_relative 'number'
require_relative 'game'


player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")

game = Game.new(player_1, player_2)

game.start
