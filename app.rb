require 'bundler'
Bundler.require 

require_relative 'lib/app/game'
require_relative 'lib/app/player'
require_relative 'lib/app/board'
require_relative 'lib/app/board_case'
require_relative 'lib/app/application'
require_relative 'lib/views/show'

puts "Entrer le nom du joueur n1 :"
name1 = gets.chomp
puts "Entrer le nom du joueur n2 :"
name2 = gets.chomp

game = Game.new(name1, name2)

puts "joueur1 s'appelle : #{game.player1.name} et joue avec #{game.player1.symbol}"
puts "joueur2 s'appelle : #{game.player2.name} et joue avec #{game.player2.symbol}"

session = Application.new

session.welcome_screen

binding.pry
