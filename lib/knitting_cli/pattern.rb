class KnittingCli::Pattern
	attr_accessor :name, :yarn_brand, :skill_level, :description, :url

	@@all = []

	def initialize(name = nil, yarn_brand = nil, url = nil)
		@name = name
		@yarn_brand = yarn_brand
		@url = url
		@@all << self
	end

	def self.new_from_site(p)
		url_ending = p.css("a.name-link").attribute('href').text 
		self.new(
			p.css("a.thumb-link").attribute('title').text.strip,
			p.css("a.thumb-link").attribute('data-gtmdata.brand'),
			`http://www.yarnspirations.com#{url_ending}`
		)	
	end

	def self.all
		@@all
	end

	def self.find(input)
		self.all[input - 1]	
	end

	def pattern_page
		@pattern_page ||= Nokogiri::HTML(open(@url))
	end

	def skill_level
		@skill_level ||= pattern_page.css("span.skill-lvl-text").text 
	end
	
	def description
		@description ||= pattern_page.css("div.std").first.text
	end	

end
