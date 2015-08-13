require 'test_helper'

class UnitConverterTest < ActiveSupport::TestCase

  test 'should convert temperature' do
    result = UnitConverter.new(:temperature, 'celsius', 10, 'fahrenheit').result

    assert_equal 50, result
  end
end