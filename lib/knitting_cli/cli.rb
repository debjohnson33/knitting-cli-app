require "./lib/knitting_cli"
require "./lib/knitting_cli/version"

class KnittingCli::CLI
  
  def call
  	puts "Today's top new knitting patterns:"
  	menu
  end

  def menu
  	
  	puts "Enter the numbers of the list you want to see: 1-10, 11-20, 21-30, 31-40, 41-50:"
 		input = gets.strip.to_i

 		list_patterns(input)

 		puts ""
 		puts "Which pattern would you like more information on?"
 		input = gets.strip

 		# code to use scraper here

 		print_pattern

 		puts ""
 		puts "Would you like to see another pattern? Enter Y or N"

 		input = gets.strip.downcase

 		if input == "y"
 			menu
 		else
 			goodbye
 		end

  end

  def list_patterns(number) # to list out the patterns in blocks of 10

  	puts ""
  	puts "Knitting Patterns #{number} - #{number + 9}"

  end

  def print_pattern #put scraped info here
  	puts "2. Adult Knit Crew Neck Cardigan - Free Pattern - Button up in this perfectly simple Crew Neck Cardigan. Knitted in Caron Simply Soft, It’s so easy to make! 
Download Pattern here: https://s3.amazonaws.com/spinrite/pdf/July-2016-new/CARON-SIMPLYSOFT-K-AdultsKnitCrewNeckCardigan-WEB.pdf"
  end

  def goodbye
  	puts "See you later!"
  end
end
