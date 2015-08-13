require 'minitest/autorun'
require_relative '../lib/fizz_buzz'

class TestFizzBuzz < MiniTest::Unit::TestCase
  def test_number_divisible_by_3
    output, err = capture_io do
      FizzBuzz.new(1..3).output
    end
   
    assert_equal output, "1\n2\nFizz\n"
  end

  def test_number_divisible_by_5
    output, err = capture_io do
      FizzBuzz.new(4..5).output
    end
   
    assert_equal output, "4\nBuzz\n"
  end

  def test_number_divisible_by_3_and_5
    output, err = capture_io do
      FizzBuzz.new(14..15).output
    end
   
    assert_equal output, "14\nFizzBuzz\n"
  end  
end