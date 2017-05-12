require "./lib/knitting_cli"
require "./lib/knitting_cli/version"

class KnittingCli::CLI
  
  def call
  	KnittingCli::Scraper.new.make_patterns
  	puts "Today's top new knitting patterns:"
  	menu
  end

  def menu
  	
  	puts "Enter the numbers of the list you want to see: 1-12, 13-24, 25-36:"
 		input = gets.strip.to_i

 		list_patterns(input)

 		puts ""
 		puts "Which pattern would you like more information on?"
 		input = gets.strip

 		# doc = Nokogiri::HTML(open("http://www.yarnspirations.com/patterns/knitting-patterns?dir=desc&limit=36&order=is_new"))
 		# page = Nokogiri::HTML(open("http://www.yarnspirations.com/patterns/lily-sugar-n-cream-2017-knit-dishcloth.html?id=201589"))
 		
 		# code to use scraper here
 		pattern = KnittingCli::Pattern.find(input.to_i)

 		print_pattern(pattern)
 		# binding.pry

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
  	puts "Knitting Patterns #{number} - #{number + 11}"
  	puts ""
  	KnittingCli::Pattern.all[number - 1, 12].each.with_index(number) do |pattern, index|
		puts "#{index}. #{pattern.name}"  		
  	end

  end

  def print_pattern(pattern) #put scraped info here
  	puts ""
  	puts "#{pattern.name}"
  	puts "#{pattern.yarn_brand}"
  	puts "#{pattern.price}"
  	puts "#{pattern.description}"
  	puts "#{pattern.url}"
  
  end

  def goodbye
  	puts "See you later!"
  end
end
