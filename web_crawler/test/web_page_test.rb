require_relative './support/test_helper'

class TestWebPage < MiniTest::Unit::TestCase
  def test_input_counts_on_root_page
    web_page = WebPage.new('http://testcrawler.herokuapp.com')   
    assert_equal web_page.inputs_count, 3
  end

  def test_input_counts_on_products_page
    web_page = WebPage.new('http://testcrawler.herokuapp.com/products')   
    assert_equal web_page.inputs_count, 2
  end  
end