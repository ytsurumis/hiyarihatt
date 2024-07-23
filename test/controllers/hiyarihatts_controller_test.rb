require "test_helper"

class HiyarihattsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hiyarihatts_index_url
    assert_response :success
  end
end
