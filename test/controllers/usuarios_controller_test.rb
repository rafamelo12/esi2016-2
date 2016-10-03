require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  test "should get perfil" do
    get :perfil
    assert_response :success
  end

end
