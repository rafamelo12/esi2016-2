class Ong < ActiveRecord::Base
    validates :nome, presence: true
    validates :email, presence: true
    validates :senha, presence: true
    validates :rua, presence: true
    validates :bairro, presence: true
    validates :cidade, presence: true
    validates :estado, presence: true
    validates :cep, presence: true
    validates :telefone, presence: true
end
