require 'test_helper'

class OngsLoginTest < ActionDispatch::IntegrationTest
  
  test "login with invalid information" do
    get '/login_ong'
    assert_template 'sessions/new'
    post '/login_ong', session: { email: "", password: "" }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
