require 'test_helper'

class VoluntarioTest < ActiveSupport::TestCase
  def setup
    @voluntario = Voluntario.new(email: "admin@ajudandoaajudar.org.br", 
                                 nome: "Admin", idade: 23, rua: "Ajudando", bairro: "Ajudar", 
                                 cidade: "São Paulo", estado: "SP", cep:"01123099", telefone: "111234-5678",
                                 password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @voluntario.valid?
  end

  test "nome should be present" do
    @voluntario.nome = ""
    assert_not @voluntario.valid?
  end

  test "nome should not be too long" do
    @voluntario.nome = "a" * 101
    assert_not @voluntario.valid?
  end

  test "email should be present" do
    @voluntario.email = ""
    assert_not @voluntario.valid?
  end

  test "email should not be too long" do
    @voluntario.email = "a" * 256
    assert_not @voluntario.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.com
                         A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
        @voluntario.email = valid_address
        assert @voluntario.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                         foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
        @voluntario.email = invalid_address
        assert_not @voluntario.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email adresses should be unique" do
    duplicate_user = @voluntario.dup
    duplicate_user.email = @voluntario.email.upcase
    @voluntario.save
    assert_not duplicate_user.valid?
  end

  test "password should be present (nonblank)" do
    @voluntario.password = @voluntario.password_confirmation = " " * 6
    assert_not @voluntario.valid?
  end

  test "password should have a minimum length" do
    @voluntario.password = @voluntario.password_confirmation = "a" * 5
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

  test "rua should not be too long" do
    @voluntario.rua = "a" * 51
    assert_not @voluntario.valid?
  end

  test "bairro should be present" do
    @voluntario.bairro = ""
    assert_not @voluntario.valid?
  end

  test "bairro should not be too long" do
    @voluntario.bairro = "a" * 51
    assert_not @voluntario.valid?
  end

  test "cidade should be present" do
    @voluntario.cidade = ""
    assert_not @voluntario.valid?
  end

  test "cidade should not be too long" do
    @voluntario.cidade = "a" * 51
    assert_not @voluntario.valid?
  end

  test "estado should be present" do
    @voluntario.estado = ""
    assert_not @voluntario.valid?
  end

  test "estado should not be too long" do
    @voluntario.estado = "a" * 51
    assert_not @voluntario.valid?
  end

  test "cep should be present" do
    @voluntario.cep = ""
    assert_not @voluntario.valid?
  end

  test "cep should not be too long" do
    @voluntario.cep = "a" * 9
    assert_not @voluntario.valid?
  end

  test "telefone should be present" do
    @voluntario.telefone = ""
    assert_not @voluntario.valid?
  end

  test "telefone should not be too long" do
    @voluntario.telefone = "a" * 12
    assert_not @voluntario.valid?
  end

end