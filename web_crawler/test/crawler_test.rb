require_relative './support/test_helper'

class TestCrawler < MiniTest::Unit::TestCase
  def test_sum_of_inputs_on_root_page
    crawler = Crawler.new('http://testcrawler.herokuapp.com')
    crawler.crawl

    assert_equal crawler.sum, {"http://testcrawler.herokuapp.com" => 6, "http://testcrawler.herokuapp.com/products" => 3 , "http://testcrawler.herokuapp.com/contactus" => 7, "http://testcrawler.herokuapp.com/customers" => 15}
  end

  def test_sum_of_inputs_on_faq_page
    crawler = Crawler.new('http://testcrawler.herokuapp.com/faq')
    crawler.crawl
    
    assert_equal crawler.sum, {"http://testcrawler.herokuapp.com/faq" => 4}
  end

  def test_sum_of_inputs_when_max_level_1
    crawler = Crawler.new('http://testcrawler.herokuapp.com', 1)
    crawler.crawl
    
    assert_equal crawler.sum, {"http://testcrawler.herokuapp.com" => 6}
  end

  def test_sum_of_inputs_when_max_pages_2
    crawler = Crawler.new('http://testcrawler.herokuapp.com', 3, 2)
    crawler.crawl
    
    assert_equal crawler.sum, {"http://testcrawler.herokuapp.com" => 5, "http://testcrawler.herokuapp.com/products" => 2 }
  end  
end