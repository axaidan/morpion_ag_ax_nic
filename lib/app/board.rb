class Board
	attr_reader :board

	def initialize
		@board = Array.new(3)
		@board.map! do |ordonnee|
			ordonnee = Array.new(3)
			ordonnee.map! do |cell|
				cell = " "
			end
		end
	end

=begin	
	def initialize
		@board = {
		"A" => {"1" => " ", "2" => " ", "3" => " "},
		"B" => {"1" => " ", "2" => " ", "3" => " "},
		"C" => {"1" => " ", "2" => " ", "3" => " "}
		}
	end	
=end
end
