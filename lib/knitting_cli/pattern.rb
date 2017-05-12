class KnittingCli::Pattern
	attr_accessor :name, :yarn_brand, :price, :description, :url

	@@all = []

	def initialize(name = nil, yarn_brand = nil, url = nil)
		@name = name
		@yarn_brand = yarn_brand
		@url = url
		@@all << self
	end

	def self.new_from_site(p)
		self.new(
			p.css("h2.product-name").text,
			p.css("a.brand-link").text,
			p.css("h2.product-name a").attribute('href').text
		)	
	end

	def self.all
		@@all
	end

	def self.find(input)
		self.all[input - 1]	
	end

	def pattern_page
		@pattern_page ||= Nokogiri::HTML(open(url))
	end

	def price
		@price ||= pattern_page.css("p.no-eng a.download-link").text 
	end
	
	def description
		@description ||= pattern_page.css("div.std").first.text
	end	

end
