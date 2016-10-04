require 'test_helper'

class VoluntariosSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get '/voluntarios/sign_up'
    assert_no_difference 'Voluntario.count' do
      post '/voluntarios', voluntario: { nome: "",
                                 email: "voluntario@invalid",
                                 password: "foo",
                                 password_confirmation: "bar",
                                 idade: 11111,
                                 rua: "",
                                 bairro: "",
                                 cidade: "",
                                 estado: "",
                                 cep: "",
                                 telefone: "" } 
    end
  end

  test "valid signup information" do
    get '/voluntarios/sign_up'
    assert_difference 'Voluntario.count', 1 do
      post '/voluntarios', voluntario: { nome: "Example",
                                 email: "example@example.com",
                                 password: "password",
                                 password_confirmation: "password",
                                 idade: 10,
                                 rua: "Example",
                                 bairro: "Example",
                                 cidade: "Example",
                                 estado: "EX",
                                 cep: "00000000",
                                 telefone: "0000000000" }
    end
    follow_redirect!
    assert_template '/'
  end
end
