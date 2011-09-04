require 'test_helper'

class ContentControllerTest < ActionController::TestCase
  test "should get menu2_1" do
    get :menu2_1
    assert_response :success
  end

  test "should get menu2_2" do
    get :menu2_2
    assert_response :success
  end

end
