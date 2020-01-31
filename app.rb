require 'bundler'
Bundler.require 

require_relative 'lib/app/game'
require_relative 'lib/app/player'
require_relative 'lib/app/board'
require_relative 'lib/app/board_case'
require_relative 'lib/app/application'
require_relative 'lib/views/show'

system("clear")
puts "\n\n"

screen = Show.new
screen.welcome_screen

puts "Entrer le nom du joueur n1 :".light_yellow.italic
print "> "
name1 = gets.chomp.upcase
puts "Entrer le nom du joueur n2 :".light_yellow.italic
print "> "
name2 = gets.chomp.upcase

party = Game.new(name1, name2)
party.play

if party.turn >= 9 && party.is_still_ongoing? == true
	screen.draw
else
	screen.byebye_screen
end
