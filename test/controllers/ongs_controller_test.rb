require 'test_helper'

class OngsControllerTest < ActionController::TestCase
  test "should get registration page" do
    get :new
    assert_response :success
  end
end