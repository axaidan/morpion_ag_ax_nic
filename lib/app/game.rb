class Game
	attr_reader :player1, :player2

	def initialize(name1, name2)
		@player1 = Player.new(name1, "X")
		@player2 = Player.new(name2, "O")
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

	def check_col
		x = 0
		while x < 3 do
			if (@grid.board[0][x] == @grid.board[1][x] &&
					@grid.board[0][x] == @grid.board[2][x] &&
					@grid.board[0][x] != " ")
				return false 
			end
			x = x + 1
		end
		return true
	end

	def check_lin
		y = 0
		while (y < 3) do
			if (@grid.board[y][0] == @grid.board[y][1] &&
					@grid.board[y][0] == @grid.board[y][2] &&
					@grid.board[y][0] != " ")
				return false 
			end
			y = y + 1
		end
		return true
	end

	def check_diag
		if (@grid.board[0][0] == @grid.board[1][1] &&
				@grid.board[0][0] == @grid.board[2][2] &&
				@grid.board[1][1] != " ")
			return false 
		elsif (@grid.board[2][0] == @grid.board[1][1] &&
			   @grid.board[2][0] == @grid.board[0][2] &&
			   @grid.board[1][1] != " ")
			return false
		end
		return true
	end

	def is_still_ongoing? 
		if (check_col && check_lin && check_diag)
			return true
		else
			return false
		end
	end

	def play
		@screen.init_display
		turn = 1
		while (is_still_ongoing? == true && turn <= 9)
			puts "tour = #{turn}"
			move(@player1)
			turn = turn + 1
			if (is_still_ongoing? == true && turn <= 9)
				puts "tour = #{turn}"
				move(@player2)
				turn = turn + 1

			end
		end
	end

	def move(player)
		system("clear")
		puts "\v"
		@screen.display(@grid.board)
		puts "\n\nA #{player.name} de jouer !"
		print "> "
		pos = gets.chomp
		if pos == '' 
			pos = "johnny halliday"
		end
		if pos[0] >= 'a' && pos[0] <= 'c'
			pos[0] =pos[0].upcase
		end
		y = pos[0].ord - 65 
		x = pos[1].to_i - 1
		while !(is_valid?(pos)) || !(is_empty?(y, x))
			print "> "
			pos = gets.chomp
			if pos == '' 
				pos = "johnny halliday"
			end
			y = pos[0].ord - 65 
			x = pos[1].to_i - 1
		end
		@grid.board[y][x] = player.symbol
	end
end
