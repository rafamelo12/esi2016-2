require 'test_helper'

class OngTest < ActiveSupport::TestCase
  def setup
    @ong = Ong.new(email: "admin@ajudandoaajudar.org.br", senha: "hashSenha", nome: "Admin", rua: "Ajudando", bairro: "Ajudar", cidade: "São Paulo", estado: "SP", cep:"01123-099", telefone: "111234-5678")
  end

  test "should be valid" do
    assert @ong.valid?
  end

  test "nome should be present" do
    @ong.nome = ""
    assert_not @ong.valid?
  end

  test "email should be present" do
    @ong.email = ""
    assert_not @ong.valid?
  end

  test "senha should be present" do
    @ong.senha = ""
    assert_not @ong.valid?
  end

  test "rua should be present" do
    @ong.rua = ""
    assert_not @ong.valid?
  end

  test "bairro should be present" do
    @ong.bairro = ""
    assert_not @ong.valid?
  end

  test "cidade should be present" do
    @ong.cidade = ""
    assert_not @ong.valid?
  end

  test "estado should be present" do
    @ong.estado = ""
    assert_not @ong.valid?
  end

  test "cep should be present" do
    @ong.cep = ""
    assert_not @ong.valid?
  end

  test "telefone should be present" do
    @ong.telefone = ""
    assert_not @ong.valid?
  end

end
