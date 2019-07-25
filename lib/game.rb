require 'pry'

require_relative 'views/board'

class Game

	def intro_game
		system "clear"
		puts "\n\nBienvenue dans votre superbe MORPION.rb \n\nVous allez pouvoir jouer !!!"
		puts "\n\nRègles : \n\n - 1 - Il faut gagner.\n\n - 2 - Le gagnant a le droit de rentré.\n\n - 3 - le perdant fait le tour de la salle!!!."
		puts "\n\nAppuie sur Entrer pour démarrer."
		gets.chomp
		board1 = Board.new.perform
	end



	def perform
		intro_game
		#choose_first_player
	end
end