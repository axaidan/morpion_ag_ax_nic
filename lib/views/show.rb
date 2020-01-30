class Show
	attr_reader :dsp_board
	def welcome_screen

        puts "\n\n"
        puts "\t\---------------Le JEU DU MORPION-----------------".light_magenta
        puts "\t\|                                               |".light_magenta
        puts "\t\|        Fait par Agathe, Axel et Nicolas       |".light_magenta
        puts "\t\|                                               |".light_magenta
        puts "\t\|                                               |".light_magenta
        puts "\t\|               Session 11 de THP               |".light_magenta
        puts "\t\|                                               |".light_magenta
        puts "\t\-------------------------------------------------".light_magenta
		puts "\n\n"      
		puts    "  Faites bien attention, le perdant aura sa tête de coupée...".red
		puts "\n\n"      
	end

		def byebye_screen
			
    	puts "\n\n"     
puts "\t\t\ ______              __   __        ".light_green
puts "\t\t\|   __ |.---.-.----.|  |_|__|.-----.".light_green
puts "\t\t\|    __/|  _  |   _||   _|  ||  -__|".light_green
puts "\t\t\|___|   |___._|__|  |____|__||_____|".light_green
																		
puts "\t\ __                        __                      __ ".light_green
puts "\t\|  |_.-----.----.--------.|__|.-----.-----.-----. |  |".light_green
puts "\t\|   _|  -__|   _|        ||  ||     |  -__|  -__| |__|".light_green
puts "\t\|____|_____|__| |__|__|__||__||__|__|_____|_____| |__|".light_green



        puts "\n\n"
        puts "\t\___________________________/)_______________|".red
        puts "\t\|-------------------------//----------------|".red
        puts "\t\|------------*-----------//---NINJA---------|".red
        puts "\t\|--------/-(____)-------//-------CUT--------|".red
        puts "\t\|-------////- -|-------//---------YOUR------|".red
        puts "\t\|----,____o% -/-------//-----------HEAD-----|".red
        puts "\t\|---/  --   |||  ;---//---------------------|".red
        puts "\t\|--/____-....::./---//----------------------|".red
        puts "\t\|--/__/#-_ _,,_/---//----THE RISE OF--------|".red
        puts "\t\|--/___/########==( )---------GABIZUKA------|".red
        puts "\t\|-/___-  __  /___---------------------------|".red
        puts "\t\|/____-'__'//____- -------------------------|".red
        puts "\t\|/____-'__'//____- -------------------------|".red
        puts "\t\|/____-'__'//____- -------------------------|".red
        puts "\t\|___________________________________________|".red
				puts "\n\n"
				

		
	end


	def draw

		puts "\n\n"     
puts "\t\t\ ______              __   __        ".light_green
puts "\t\t\|   __ |.---.-.----.|  |_|__|.-----.".light_green
puts "\t\t\|    __/|  _  |   _||   _|  ||  -__|".light_green
puts "\t\t\|___|   |___._|__|  |____|__||_____|".light_green
																		
puts "\t\ __                        __                      __ ".light_green
puts "\t\|  |_.-----.----.--------.|__|.-----.-----.-----. |  |".light_green
puts "\t\|   _|  -__|   _|        ||  ||     |  -__|  -__| |__|".light_green
puts "\t\|____|_____|__| |__|__|__||__||__|__|_____|_____| (__)".light_green

puts "\n\n"  

		puts "\t\ _____ _____   ___   _     _____ _____ _____   _ ".light_magenta
		puts "\t\|  ___|  __ | ' _ ' | |   |_   _|_   _|  ___| | |".light_magenta
		puts "\t\| |__ | |  |/| |_| || |     | |   | | | |__   | |".light_magenta
		puts "\t\|  __|| | __ |  _  || |     | |   | | |  __|  | |".light_magenta
		puts "\t\| |___| |_| || | | || |_____| |_  | | | |___  |_|".light_magenta
		puts "\t\|____/| ____/|_| |_||_____/|___/  |_| |____/  (_)".light_magenta

	end
	

	
	
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
					@dsp_board[y][x] = "-".light_yellow
				elsif (x % 8 == 0)
					@dsp_board[y][x] = "|".light_yellow
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
			print "\t\t"
			while (x < @dsp_board[y].length)
				print @dsp_board[y][x]
				x += 1
			end
			print "\n"
			y += 1
		end
	end
end