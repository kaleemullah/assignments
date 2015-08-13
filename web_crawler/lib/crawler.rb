require 'open-uri'
require 'nokogiri'
require_relative 'web_page'

class Crawler
  attr_reader :sum, :crawled_pages

  def initialize(address, max_level = 3, max_pages = 50)
    @address = address
    @max_level = max_level
    @max_pages = max_pages
    @web_page = WebPage.new(@address)
    @sum = {}
    @crawled_pages = []
  end

  def crawl(level = 0, web_page = @web_page)
    if level < @max_level
      sum[web_page.url] = web_page.inputs_count

      crawled_pages << web_page.url

      web_page.referred_links.each do |link|

        break if crawled_pages.count == @max_pages

        ref_page = WebPage.new(link)

        sum[web_page.url] = sum[web_page.url] + ref_page.inputs_count

        crawl(level + 1, ref_page)
      end
    end
  end

  def output
    crawl

    sum.each_pair do |url, count|
      puts "#{url}: #{count}"
    end  
  end  
end