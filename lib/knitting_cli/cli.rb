require "./lib/knitting_cli"
require "./lib/knitting_cli/version"

class KnittingCli::CLI
  
  def call
  	KnittingCli::Scraper.new.make_patterns
  	puts "Today's top new knitting patterns:"
  	menu
  end

  def menu
  	
  	puts "Enter the numbers of the list you want to see: 1-12, 13-24:"
 		input = gets.strip.to_i

 		list_patterns(input)

 		puts ""
 		puts "Which pattern would you like more information on?"
 		input = gets.strip

 		pattern = KnittingCli::Pattern.find(input.to_i)

 		print_pattern(pattern)
 		

 		puts ""
 		puts "Would you like to see another pattern? Enter Y or N"

 		input = gets.strip.downcase

 		if input == "y"
 			menu
 		else
 			goodbye
 		end

  end

  def list_patterns(number) 

  	puts ""
  	puts "Knitting Patterns #{number} - #{number + 11}"
  	puts ""
  	KnittingCli::Pattern.all[number - 1, 12].each.with_index(number) do |pattern, index|
		puts "#{index}. #{pattern.name}"  		
  	end

  end

  def print_pattern(pattern) 
  	puts ""
  	puts "Name: #{pattern.name.strip}"
  	puts ""
  	puts "Yarn Brand: #{pattern.yarn_brand}"
  	puts ""
  	puts "Price: #{pattern.skill_level}"
  	puts ""
  	puts "Description: #{pattern.description}"
  	puts ""
  	puts "Website: #{pattern.url}"
  
  end

  def goodbye
  	puts "See you later!"
  end
end
