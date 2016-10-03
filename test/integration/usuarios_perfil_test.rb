require 'test_helper'

class UsuariosPerfilTest < ActionDispatch::IntegrationTest
  test "perfil requested" do
    get '/perfil'
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
    assert_template 'usuarios/perfil'
  end
end
