class KnittingCli::Scraper

	def get_page
		Nokogiri::HTML(open("http://www.yarnspirations.com/knit-patterns?sz=24"))
	end

	def scrape_index
		self.get_page.css("li.grid-tile")
	end

	def make_patterns
		scrape_index.each do |p|
			KnittingCli::Pattern.new_from_site(p)
		end
	end

end
