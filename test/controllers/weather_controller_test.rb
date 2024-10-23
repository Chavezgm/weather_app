require "test_helper"

class WeatherControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get weather_index_url
    assert_response :success
  end

  test "should get local_entities" do
    get weather_local_entities_url
    assert_response :success
  end
end
