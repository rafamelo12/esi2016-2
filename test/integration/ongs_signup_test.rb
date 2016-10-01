require 'test_helper'

class OngsSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get '/signup_ong'
    assert_no_difference 'Ong.count' do
      post '/signup_ong', ong: { nome: "",
                                 email: "ong@invalid",
                                 password: "foo",
                                 password_confirmation: "bar",
                                 rua: "",
                                 bairro: "",
                                 cidade: "",
                                 estado: "",
                                 cep: "",
                                 telefone: "" } 
    end
    assert_template 'ongs/new'
  end

  test "valid signup information" do
    get '/signup_ong'
    assert_difference 'Ong.count', 1 do
      post '/signup_ong', ong: { nome: "Example",
                                 email: "example@example.com",
                                 password: "password",
                                 password_confirmation: "password",
                                 rua: "Example",
                                 bairro: "Example",
                                 cidade: "Example",
                                 estado: "EX",
                                 cep: "00000000",
                                 telefone: "0000000000" }
    end
    follow_redirect!
    assert_template 'ongs/show'
  end
end
