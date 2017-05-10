require "./lib/knitting_cli"
require "./lib/knitting_cli/version"

class KnittingCli::CLI
  
  def call
  	
  	list_patterns
  	menu
  end


  def list_patterns

  	puts "Today's top new knitting patterns:"
  	puts <<-DOC
  		1. 2017 Knit Dishcloth - Easy
		2. Adult Knit Crew Neck Cardigan - Easy
  	DOC

  end

  def menu
  	puts "Enter the numbers of the list you want to see: 1-10, 11-20, 21-30, 31-40, 41-50:"
  end
end
