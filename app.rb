require 'bundler'
Bundler.require 

require_relative 'lib/app/game'
require_relative 'lib/app/player'
require_relative 'lib/app/board'
require_relative 'lib/app/board_case'
require_relative 'lib/app/application'
require_relative 'lib/views/show'


puts "Entrer le nom du joueur n1 :".light_yellow.italic
name1 = gets.chomp
puts "Entrer le nom du joueur n2 :".light_yellow.italic
name2 = gets.chomp

game = Game.new(name1, name2)

puts "Joueur1 s'appelle : #{game.player1.name} et joue avec #{game.player1.symbol}".light_red
puts "Joueur2 s'appelle : #{game.player2.name} et joue avec #{game.player2.symbol}".light_cyan


# session = Application.new
# session.welcome_screen
# session.end_screen

screen = Show.new
screen.welcome_screen

grid = Board.new
screen.init_display
screen.display(grid.board)

screen.byebye_screen

binding.pry
