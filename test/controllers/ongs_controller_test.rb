require 'test_helper'

class OngsControllerTest < ActionController::TestCase
  test "should get registration page" do
    get :new
    assert_response :success
  end

  test "should get index page" do
    get :index
    assert_response :success
  end
end