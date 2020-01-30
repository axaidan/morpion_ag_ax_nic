class Show
	attr_reader :dsp_board

	def init_display
		@dsp_board = Array.new(13)
		@dsp_board.map! do |ordonnee|
			ordonnee = Array.new(25)
			ordonnee.map! do |cell|
				cell = " "
			end
		end
		y = 0
		while (y < @dsp_board.length)
			x = 0
			while (x < @dsp_board[y].length)	
				if (y % 4 == 0)
					@dsp_board[y][x] = "-"
				elsif (x % 8 == 0)
					@dsp_board[y][x] = "|"
				end	
				x += 1
			end
			y += 1
		end
	end

	def fill(board)
		y = 0
		while (y < board.length)
			x = 0
			while (x < board[y].length)
				@dsp_board[y * 4 + 2][x * 8 + 4] = board[y][x]
				x += 1
			end
			y += 1
		end

	end

	def display(board)
		fill(board)
		y = 0
		while (y < @dsp_board.length)
			x = 0
			print "\t"
			while (x < @dsp_board[y].length)
				print @dsp_board[y][x]
				x += 1
			end
			print "\n"
			y += 1
		end
	end
end

