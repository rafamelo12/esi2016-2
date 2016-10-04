require 'test_helper'

class VoluntarioLoginTest < ActionDispatch::IntegrationTest
  
  test "login with invalid information" do
    get '/voluntarios/sign_in'
    assert_template 'sessions/new'
    post '/voluntarios/sign_in', session: { email: "", password: "" }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
