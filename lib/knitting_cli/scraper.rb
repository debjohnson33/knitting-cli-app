class KnittingCli::Scraper

	def get_page
		Nokogiri::HTML(open("http://www.yarnspirations.com/patterns/knitting-patterns?dir=desc&limit=36&order=is_new"))
	end

	def scrape_index
		self.get_page.css("li.item last")
	end

	def make_patterns
		self.scrape_index.each do ||

		end
		
	end
end
