require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get disp" do
    get members_disp_url
    assert_response :success
  end

  test "should get new" do
    get members_new_url
    assert_response :success
  end

end
