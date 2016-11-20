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

  test "should find Ajudando" do
    test_search = "Ajudando"
    ongs = @controller.ongs_search(test_search)
    assert ongs.count == 1
  end

  test "should find no ongs" do
    test_search = "no ong will be found"
    ongs = @controller.ongs_search(test_search)
    assert ongs.count == 0
    assert_response :success
  end

  test "should create a new ong" do
    assert_difference 'Ong.count', 1 do
      post :create, ong: { nome: "Adote um Gatinho",
                           email: "contato@adoteumgatinho.com.br",
                           password: "foobar",
                           password_confirmation: "foobar",
                           rua: "Rua Test",
                           bairro: "Teste",
                           cidade: "São Paulo",
                           estado: "SP",
                           cep: "01122011",
                           telefone: "1122334455",
                           interesses: "Animais, Gatos",
                           sobre: "Queremos ajudar todos os gatos possíveis!" }
    end
  end

  test "should not create a new ong" do
    assert_no_difference 'Ong.count' do
      post :create, ong: { nome: "",
                           email: "ong@invalid",
                           password: "foo",
                           password_confirmation: "bar",
                           rua: "",
                           bairro: "",
                           cidade: "",
                           estado: "",
                           cep: "",
                           telefone: "",
                           interesses: "",
                           sobre: "" } 
    end
  end

  test "should get index page with Ajudando ONG" do
    post :index, params: { user_search: "Ajudando" }
    assert response.body.include? "Ajudando a Ajudar"
    assert_response :success
  end

end