require 'pry'

require_relative '../game'
require_relative '../player'

class Board

	def creation_board

case_1 = 
"|               |               |               |
|               |               |               |
|               |               |               |
|               |               |               |"
case_2 = 
"|               |               |               |
|               |               |               |
|               |               |               |
|               |               |               |"
case_3 = 
"|               |               |               |
|               |               |               |
|               |               |               |
|               |               |               |"
case_4 = 
"|               |               |               |
|               |               |               |
|               |               |               |
|               |               |               |"
case_5 = 
"|               |               |               |
|               |               |               |
|               |               |               |
|               |               |               |"
case_6 = 
"|               |               |               |
|               |               |               |
|               |               |               |
|               |               |               |"

line = 
" --------------- --------------- ---------------"

@arr_2 = [] << line << case_1 << line << case_2 << line << case_3 << line
@arr_1 = [] << line << case_4 << line << case_5 << line << case_6 << line

# CREATION GRILLE LECTURE

	@arr_1[1][58] = "A"
	@arr_1[1][108] = "1"
	@arr_1[3][58] = "A"
	@arr_1[3][108] = "2"
	@arr_1[5][58] = "A"
	@arr_1[5][108] = "3"
	@arr_1[1][74] = "B"
	@arr_1[1][124] = "1"
	@arr_1[3][74] = "B"
	@arr_1[3][124] = "2"
	@arr_1[5][74] = "B"
	@arr_1[5][124] = "3"
	@arr_1[1][90] = "C"
	@arr_1[1][140] = "1"
	@arr_1[3][90] = "C"
	@arr_1[3][140] = "2"
	@arr_1[5][90] = "C"
	@arr_1[5][140] = "3"

# CREATION GRILLE LECTURE


return "Le Board a été crée."
	end

	

	def update_player_name
			system "clear"
			puts " Player 1, quel est ton nom ?"
			print " >"
			@player_1_name = gets.chomp

			puts "\n Player 2, quel est ton nom ?"
			print " >"
			@player_2_name = gets.chomp
			
			puts "\n Bienvenue à vous deux, #{@player_1_name} et #{@player_2_name}.\n\n Préparez-vous à l'affrontement !!"
			puts "Press Enter"
			gets.chomp		
	end

	def turn
		puts "\n\n\n\n\n   *********** La partie commence !! ***********"
		number_turn = 5
			while number_turn > 0 
				number_turn -= 1
				
				puts "C'est à #{@player_1_name} de jouer avec les 'X'\n Choisis une lettre (majuscule) et un chiffre."
				puts "Attention, sois pas débile, sinon tu perds ton tour."
				print " => "
				choice_player_1 = gets.chomp
					if choice_player_1 == "A1"
						self.play_A_1("X")
					elsif 
						choice_player_1 == "A2"
						self.play_A_2("X")
					elsif 
						choice_player_1 == "A3"
						self.play_A_3("X")
					elsif 
						choice_player_1 == "B1"
						self.play_B_1("X")
					elsif 
						choice_player_1 == "B2"
						self.play_B_2("X")
					elsif 
						choice_player_1 == "B3"
						self.play_B_3("X")
					elsif 
						choice_player_1 == "C1"
						self.play_C_1("X")
					elsif 
						choice_player_1 == "C2"
						self.play_C_2("X")
					elsif 
						choice_player_1 == "C3"
						self.play_C_3("X")
						
					end
					
				self.display_board
				break if victory_?("X") == true
				puts "C'est à #{@player_2_name} de jouer avec les 'O'.\n Choisis une lettre (majuscule) et un chiffre."
				puts "Attention, sois pas débile, sinon tu perds ton tour."
				print " > "
				choice_player_2 = gets.chomp
					if choice_player_2 == "A1"
						self.play_A_1("O")
					elsif 
						choice_player_2 == "A2"
						self.play_A_2("O")
					elsif 
						choice_player_2 == "A3"
						self.play_A_3("O")
					elsif 
						choice_player_2 == "B1"
						self.play_B_1("O")
					elsif 
						choice_player_2 == "B2"
						self.play_B_2("O")
					elsif 
						choice_player_2 == "B3"
						self.play_B_3("O")
					elsif 
						choice_player_2 == "C1"
						self.play_C_1("O")
					elsif 
						choice_player_2 == "C2"
						self.play_C_2("O")
					elsif 
						choice_player_2 == "C3"
						self.play_C_3("O")
					end
					break if victory_?("O") == true
					
			end
			if number_turn == 0
			puts " MATCH NUL \n\n ***FIN DE LA PARTIE***\n\n Press Enter"	
			
			else 
			puts " ***FIN DE LA PARTIE***\n\n Press Enter"
			end
			gets.chomp

			Index.new.perform
	end

	def play_A_1(symbol)
	# CASE A1
		@arr_2[1][58] = "#{symbol}"
		@arr_2[1][108] = "#{symbol}"
	end

	def play_A_2(symbol)
	# CASE A2
		@arr_2[3][58] = "#{symbol}"
		@arr_2[3][108] = "#{symbol}"	
	end

	def play_A_3(symbol)
	# CASE A3
		@arr_2[5][58] = "#{symbol}"
		@arr_2[5][108] = "#{symbol}"
	end

	def play_B_1(symbol)
	# CASE B1
		@arr_2[1][74] = "#{symbol}"
		@arr_2[1][124] = "#{symbol}"
	end

	def play_B_2(symbol)
	# CASE B2
		@arr_2[3][74] = "#{symbol}"
		@arr_2[3][124] = "#{symbol}"
	end

	def play_B_3(symbol)
	# CASE B3
		@arr_2[5][74] = "#{symbol}"
		@arr_2[5][124] = "#{symbol}"
	end

	def play_C_1(symbol)
	# CASE C1
		@arr_2[1][90] = "#{symbol}"
		@arr_2[1][140] = "#{symbol}"
	end

	def play_C_2(symbol)
	# CASE C2
		@arr_2[3][90] = "#{symbol}"
		@arr_2[3][140] = "#{symbol}"
	end

	def play_C_3(symbol)
	# CASE C3
		@arr_2[5][90] = "#{symbol}"
		@arr_2[5][140] = "#{symbol}"	
	end

	def victory_?(symbol)
		#VICTOIRE : A1 - A2 - A3
		if @arr_2[1][58] == "#{symbol}" && @arr_2[3][58] == "#{symbol}" && @arr_2[5][58] == "#{symbol}"
			puts "'#{symbol}' WIN."
			return true
		#VICTOIRE : B1 - B2 - B3
		elsif @arr_2[1][74] == "#{symbol}" && @arr_2[3][74] == "#{symbol}" && @arr_2[5][74] == "#{symbol}"
			puts "'#{symbol}' WIN."
			return true
		#VICTOIRE : C1 - C2 - C3
		elsif @arr_2[1][90] == "#{symbol}" && @arr_2[3][90] == "#{symbol}" && @arr_2[5][90] == "#{symbol}"
			puts "'#{symbol}' WIN."
			return true
		#VICTOIRE : A1 - B1 - C1
		elsif @arr_2[1][58] == "#{symbol}" && @arr_2[1][74] == "#{symbol}" && @arr_2[1][90] == "#{symbol}"
			puts "'#{symbol}' WIN."
			return true
		#VICTOIRE : A2 - B2 - C2
		elsif @arr_2[3][58] == "#{symbol}" && @arr_2[3][74] == "#{symbol}" && @arr_2[3][90] == "#{symbol}"
			puts "'#{symbol}' WIN."
			return true
		#VICTOIRE : A3 - B3 - C3
		elsif @arr_2[5][58] == "#{symbol}" && @arr_2[5][74] == "#{symbol}" && @arr_2[5][90] == "#{symbol}"
			puts "'#{symbol}' WIN."
			return true
		#VICTOIRE : A1 - B2 - C3
		elsif @arr_2[1][58] == "#{symbol}" && @arr_2[3][74] == "#{symbol}" && @arr_2[5][90] == "#{symbol}"
			puts "'#{symbol}' WIN."
			return true
		#VICTOIRE : A3 - B2 - C1
		elsif @arr_2[5][58] == "#{symbol}" && @arr_2[3][74] == "#{symbol}" && @arr_2[1][90] == "#{symbol}"
			puts "'#{symbol}' WIN."
			return true
		else
			return false
		end
	end

	def perform
		creation_board
		update_player_name
		turn
	end
end
