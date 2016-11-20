require 'test_helper'

class OngsSignupTest < ActionDispatch::IntegrationTest
  # test "invalid signup information" do
  #   get '/ongs/new'
  #   assert_no_difference 'Ong.count' do
  #     post '/ongs', ong: { nome: "",
  #                                email: "ong@invalid",
  #                                password: "foo",
  #                                password_confirmation: "bar",
  #                                rua: "",
  #                                bairro: "",
  #                                cidade: "",
  #                                estado: "",
  #                                cep: "",
  #                                telefone: "",
  #                                interesses: "",
  #                                sobre: "" } 
  #   end
  #   assert_template 'ongs/new'
  #   assert response.body.include? "error_explanation"
  #   assert_response :success
  # end

  # test "valid signup information" do
  #   get '/ongs/new'
  #   assert_difference 'Ong.count', 1 do
  #     post '/ongs', ong: { nome: "Example", email: "example@example.com",
  #                                password: "password",
  #                                password_confirmation: "password",
  #                                rua: "Example",
  #                                bairro: "Example",
  #                                cidade: "Example",
  #                                estado: "EX",
  #                                cep: "00000000",
  #                                telefone: "0000000000",
  #                                interesses: "Cachorros",
  #                                sobre: "Awesome example!" }
  #   end
  #   follow_redirect!
  #   assert_template 'ongs/show'
  # end
end
