class KnittingCli::Pattern
	attr_accessor :name, :yarn_brand, :price, :description, :url

	@@all = []

	def initialize
		@@all << self
	end

	def self.all
		@@all
	end
	
	def knitting_list
		# KnittingCli::Scraper.scrape_index
		# name =  doc.css("h2.product-name")
		# yarn_brand = doc.css("div.product-info a")
	end


	def pattern_info
		# price = page.css("p a.download-link").text
		# description = page.css("div.std").text
	end
	

end