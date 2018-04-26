require 'test_helper'

class HumanControllerTest < ActionDispatch::IntegrationTest
  test "should get disp" do
    get human_disp_url
    assert_response :success
  end

end
