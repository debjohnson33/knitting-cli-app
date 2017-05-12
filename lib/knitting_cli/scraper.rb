class KnittingCli::Scraper

	def get_page
		Nokogiri::HTML(open("http://www.yarnspirations.com/patterns/knitting-patterns?dir=desc&limit=36&order=is_new"))
	end

	def scrape_index
		self.get_page.css("li.item")
	end

	def make_pattern_list
		scrape_index.each do |p|
			pattern = KnittingCli::Pattern.new
			pattern.name =  p.css("h2.product-name")
			pattern.yarn_brand = p.css("div.product-info a")
		
			pattern.url = p.attribute('href')
		 #  	pattern.description = pattern.url.css("div.std").text
		end
	end

	def make_patterns

		
	end
end
