require 'bundler'
Bundler.require 

require_relative 'lib/app/game'
require_relative 'lib/app/player'
require_relative 'lib/app/board'
require_relative 'lib/app/board_case'
require_relative 'lib/app/application'
require_relative 'lib/views/show'

=begin
screen = Show.new
grid = Board.new
screen.init_display
screen.display(grid.board)
=end
party = Game.new("AXEL", "NICOLAS")
party.move(party.player1)
party.move(party.player1)
party.move(party.player1)
party.move(party.player1)
party.move(party.player1)
