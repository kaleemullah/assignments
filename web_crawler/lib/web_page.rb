require 'nokogiri'
require 'typhoeus'

class WebPage
  attr_reader :referred_links, :url

  def initialize(url)
    @url = url
    @doc = Nokogiri::HTML(Typhoeus.get(url).body)
    @referred_links = @doc.css('a').map{ |link| URI.parse(url).merge(URI.parse(link['href'])).to_s }.uniq  
  end

  def inputs_count
    @doc.css('input').count
  end
end