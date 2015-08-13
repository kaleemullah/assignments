require 'minitest/autorun'
require 'minitest/pride'
require 'nokogiri'
require 'typhoeus'
require 'uri'
# pull in the code to test
require File.expand_path '../../lib/crawler.rb', __dir__
require File.expand_path '../../lib/web_page.rb', __dir__
