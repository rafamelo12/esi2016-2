require 'test_helper'

class OngTest < ActiveSupport::TestCase
#   def setup
#     @ong = Ong.new(email: "admin@ajudandoaajudar.org.br",
#                    nome: "Admin", rua: "Ajudando", bairro: "Ajudar", cidade: "São Paulo", 
#                    estado: "SP", cep:"01123099", telefone: "111234-5678",
#                    password: "foobar", password_confirmation: "foobar",
#                    sobre: "Somos responsáveis por essa plataforma maravilhosa!",
#                    interesses: "ONGs, Voluntários")
#   end

#   test "should be valid" do
#     assert @ong.valid?
#   end

#   test "nome should be present" do
#     @ong.nome = ""
#     assert_not @ong.valid?
#   end

#   test "nome should not be too long" do
#     @ong.nome = "a" * 101
#     assert_not @ong.valid?
#   end

#   test "nome should not be too short" do
#     @ong.nome = "a" * 4
#     assert_not @ong.valid?
#   end

#   test "nome should contain only characters" do
#     @ong.nome = "John 12 Doe"
#     assert_not @ong.valid?
#   end


#   test "email should be present" do
#     @ong.email = ""
#     assert_not @ong.valid?
#   end

#   test "email validation should accept valid addresses" do
#     valid_addresses = %w[admin@ajudandoaajudar.org.br user@example.com USER@foo.com
#                          A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
#     valid_addresses.each do |valid_address|
#         @ong.email = valid_address
#         assert @ong.valid?, "#{valid_address.inspect} should be valid"
#     end
#   end

#   test "email validation should reject invalid addresses" do
#     invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
#                          foo@bar_baz.com foo@bar+baz.com]
#     invalid_addresses.each do |invalid_address|
#         @ong.email = invalid_address
#         assert_not @ong.valid?, "#{invalid_address.inspect} should be invalid"
#     end
#   end

#   test "email adresses should be unique" do
#     duplicate_user = @ong.dup
#     duplicate_user.email = @ong.email.upcase
#     @ong.save
#     assert_not duplicate_user.valid?
#   end

#   test "email should not be too long" do
#     @ong.email = "a" * 256
#     assert_not @ong.valid?
#   end

#   test "password should be present (nonblank)" do
#     @ong.password = @ong.password_confirmation = " " * 6
#     assert_not @ong.valid?
#   end

#   test "password should have a minimum length" do
#     @ong.password = @ong.password_confirmation = "a" * 5
#     assert_not @ong.valid?
#   end

#   test "rua should be present" do
#     @ong.rua = ""
#     assert_not @ong.valid?
#   end

#   test "rua should not be too short" do
#     @ong.rua = "a" * 4
#     assert_not @ong.valid?
#   end

#   test "rua should not be too long" do
#     @ong.rua = "a" * 51
#     assert_not @ong.valid?
#   end

#   test "bairro should be present" do
#     @ong.bairro = ""
#     assert_not @ong.valid?
#   end

#   test "bairro should not be too short" do
#     @ong.bairro = "a" * 4
#     assert_not @ong.valid?
#   end

#   test "bairro should not be too long" do
#     @ong.bairro = "a" * 51
#     assert_not @ong.valid?
#   end

#   test "cidade should be present" do
#     @ong.cidade = ""
#     assert_not @ong.valid?
#   end

#   test "cidade should not be too short" do
#     @ong.cidade = "a" * 4
#     assert_not @ong.valid?
#   end

#   test "cidade should not be too long" do
#     @ong.cidade = "a" * 51
#     assert_not @ong.valid?
#   end

#   test "estado should be present" do
#     @ong.estado = ""
#     assert_not @ong.valid?
#   end

#   test "estado should not be too short" do
#     @ong.estado = "a"
#     assert_not @ong.valid?
#   end

#   test "estado should not be too long" do
#     @ong.estado = "a" * 51
#     assert_not @ong.valid?
#   end

#   test "cep should be present" do
#     @ong.cep = ""
#     assert_not @ong.valid?
#   end

#   test "cep should not be too short" do
#     @ong.cep = "0" * 7
#     assert_not @ong.valid?
#   end

#   test "cep should not be too long" do
#     @ong.cep = "0" * 9
#     assert_not @ong.valid?
#   end

#   test "telefone should be present" do
#     @ong.telefone = ""
#     assert_not @ong.valid?
#   end

#   test "telefone should not be too short" do
#     @ong.telefone = "0" * 9
#     assert_not @ong.valid?
#   end

#   test "telefone should not be too long" do
#     @ong.telefone = "0" * 12
#     assert_not @ong.valid?
#   end

#   test "interesses should not be too short" do
#     @ong.interesses = ""
#     assert_not @ong.valid?
#   end

#   test "interesses should not be too long" do
#     @ong.interesses = "a" * 501
#     assert_not @ong.valid?
#   end

#   test "sobre should not be too short" do
#     @ong.sobre = ""
#     assert_not @ong.valid?
#   end

#   test "sobre should not be too long" do
#     @ong.sobre = "a" * 501
#     assert_not @ong.valid?
#   end

end