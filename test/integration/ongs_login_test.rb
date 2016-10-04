require 'test_helper'

class OngsLoginTest < ActionDispatch::IntegrationTest
  
  test "login with invalid information" do
    get '/ongs/sign_in'
    assert_template 'sessions/new'
    post '/ongs/sign_in', session: { email: "", password: "" }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
