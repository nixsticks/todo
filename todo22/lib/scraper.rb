require 'open-uri'
require 'nokogiri'

class Scraper
  attr_reader :html

  def initialize(url)
    @html = Nokogiri::HTML(open(url))
  end

  def dates
    html.search('//tr/td[@class = "nw"]').map {|date| date.text}
  end

  def holidays
    html.search('//tr/td/a[contains(@href, "/holidays/")]').map {|holiday| holiday.text.gsub(/ \((.*)\)/, "")}
  end

  def holiday_hash
    hash = {}
    dates.size.times {|i| hash[holidays[i]] = dates[i]}
    hash
  end
end