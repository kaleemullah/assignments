require 'test_helper'

class ConverterControllerTest < ActionController::TestCase
  test "should get new" do
    get 'new'

    assert_response :success
  end

  test "should convert temperature from celsius to fahrenheit when get request" do
    get 'convert', { unit: 'temperature', from: 'celsius', value: 10, to: 'fahrenheit' }

    assert_response :success
    assert_not_nil assigns(:result)
  end

  test "should convert temperature from celsius to fahrenheit when post method" do
    post 'convert', { value: 10 }

    assert_redirected_to '/convert/temperature/celsius/10/fahrenheit'
    assert_not_nil assigns(:result)
  end  
end