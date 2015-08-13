require 'test_helper'

class TemperatureTest < ActiveSupport::TestCase

  test 'should convert from celsius to fahrenheit' do
    result = Temperature.new(10).celsius_to_fahrenheit

    assert_equal 50, result
  end

  test 'should convert from fahrenheit to celsius' do
    result = Temperature.new(50).fahrenheit_to_celsius

    assert_equal 10, result
  end 
end