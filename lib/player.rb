require 'pry'		
require 'dotenv' 	
Dotenv.load('.env') 


class Player

		attr_accessor :name
			

	def initialize(update_name)
		@name = update_name.to_s
	end

	def display_name
		puts "Le joueur #{self.name}."
	end

	
end

