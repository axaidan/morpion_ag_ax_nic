class Game
	attr_reader :player1, :player2

	def initialize(name1, name2)
		@player1 = Player.new(name1, "x")
		@player2 = Player.new(name2, "o")
		@grid = Board.new
		@screen = Show.new

	end

	def is_valid?(str)
		if (str.length == 2 && str[0] >= 'A' && str[0] <= 'C' &&
				str[1] >= '1' && str[1] <= '3')
			return true
		else
			puts "ERREUR - Commande invalide !"
			return false
		end
	end

	def is_empty?(y, x)
		if (@grid.board[y][x] == ' ')
			return true
		else
			puts "ERREUR - Il y a deja un pion sur cette position...\n(Mais quel tocard...)"
			return false
		end
	end

	def move(player)
		@screen.init_display
		puts "A #{player.name} de jouer !"
		print "> "
		pos = gets.chomp
		y = pos[0].ord - 65 
		x = pos[1].to_i - 1
		puts "#{pos[0]} ==> #{y}"
		puts "#{pos[1]} ==> #{x}"
		while !(is_valid?(pos)) || !(is_empty?(y, x))
			print "> "
			pos = gets.chomp
			y = pos[0].ord - 65 
			x = pos[1].to_i - 1
		end
		@grid.board[y][x] = player.symbol
		@screen.display(@grid.board)
	end
end
