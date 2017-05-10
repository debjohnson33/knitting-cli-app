require "./lib/knitting_cli"
require "./lib/knitting_cli/version"

class KnittingCli::CLI
  
  def call
  	
  	menu
  	list_patterns
  	goodbye
  end


  def list_patterns

  	#puts <<-DOC
  	#	1. 2017 Knit Dishcloth - Easy
	#	2. Adult Knit Crew Neck Cardigan - Easy
  	#DOC

  end

  def menu
  	puts "Today's top new knitting patterns:"
  	input = nil
  	while input != "exit"
  		puts "Enter the numbers of the list you want to see: 1-10, 11-20, 21-30, 31-40, 41-50 or type exit:"
 		input = gets.strip.downcase
 		case input
 		when "1-10"
 			puts "1-10 Knitting patterns"
 		when "11-20"
 			puts "11-20 Knitting patterns"
 		else
 			puts "Not sure what you want. Type the numbers of the list you want to see or exit."
 		end
 	end
  end

  def goodbye
  	puts "See you later!"
  end
end
