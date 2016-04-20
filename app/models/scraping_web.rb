require 'nokogiri'
require 'open-uri'

class ScrapingWeb
  def self.exist_token(location)
    html = open(location).read
    doc = Nokogiri::HTML(html)
    return (html.index('authenticity_token').nil?) ? false : true
  end
end