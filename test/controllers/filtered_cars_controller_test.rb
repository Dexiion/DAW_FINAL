require "test_helper"

class FilteredCarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get filtered_cars_index_url
    assert_response :success
  end
end
