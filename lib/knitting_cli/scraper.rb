class KnittingCli::Scraper

	def get_page
		Nokogiri::HTML(open("http://www.yarnspirations.com/patterns/knitting-patterns?dir=desc&limit=36&order=is_new"))
	end

	def scrape_index
		self.get_page.css("li.item")
	end

	def make_patterns
		scrape_index.each do |p|
			
		end
		
	end
end
