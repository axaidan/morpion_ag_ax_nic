class Game
	attr_reader :player1, :player2

	def initialize(name1, name2)
		@player1 = Player.new(name1, "x")
		@player2 = Player.new(name2, "o")
		

	end
end
