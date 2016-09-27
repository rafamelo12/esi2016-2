require 'test_helper'

class VoluntarioTest < ActiveSupport::TestCase
  def setup
    @voluntario = Voluntario.new(email: "admin@ajudandoaajudar.org.br", senha: "hashSenha", nome: "Admin", idade: 23, rua: "Ajudando", bairro: "Ajudar", cidade: "São Paulo", estado: "SP", cep:"01123-099", telefone: "111234-5678")
  end

  test "should be valid" do
    assert @voluntario.valid?
  end

  test "nome should be present" do
    @voluntario.nome = ""
    assert_not @voluntario.valid?
  end

  test "email should be present" do
    @voluntario.email = ""
    assert_not @voluntario.valid?
  end

  test "senha should be present" do
    @voluntario.senha = ""
    assert_not @voluntario.valid?
  end

  test "idade should be present" do
    @voluntario.idade = ""
    assert_not @voluntario.valid?
  end

  test "rua should be present" do
    @voluntario.rua = ""
    assert_not @voluntario.valid?
  end

  test "bairro should be present" do
    @voluntario.bairro = ""
    assert_not @voluntario.valid?
  end

  test "cidade should be present" do
    @voluntario.cidade = ""
    assert_not @voluntario.valid?
  end

  test "estado should be present" do
    @voluntario.estado = ""
    assert_not @voluntario.valid?
  end

  test "cep should be present" do
    @voluntario.cep = ""
    assert_not @voluntario.valid?
  end

  test "telefone should be present" do
    @voluntario.telefone = ""
    assert_not @voluntario.valid?
  end

end