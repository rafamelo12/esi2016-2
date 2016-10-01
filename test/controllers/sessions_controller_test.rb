require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get '/login_ong'
    assert_response :success
  end

end
