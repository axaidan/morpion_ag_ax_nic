require 'bundler'
Bundler.require 

require_relative 'lib/app/game'
require_relative 'lib/app/player'
require_relative 'lib/app/board'
require_relative 'lib/app/board_case'
require_relative 'lib/app/application'
require_relative 'lib/views/show'


puts "Entrer le nom du joueur n1 :".light_yellow.italic
name1 = gets.chomp.upcase
puts "Entrer le nom du joueur n2 :".light_yellow.italic
name2 = gets.chomp.upcase

game = Game.new(name1, name2)

# session = Application.new
# session.welcome_screen
# session.end_screen

screen = Show.new
screen.welcome_screen

party = Game.new(name1, name2)
party.play

screen.byebye_screen

binding.pry
