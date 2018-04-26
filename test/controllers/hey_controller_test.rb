require 'test_helper'

class HeyControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get hey_top_url
    assert_response :success
  end

end
