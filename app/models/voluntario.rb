class Voluntario < ActiveRecord::Base
    before_save { self.email = email.downcase }
    validates :nome, presence: true, length: { maximum: 100 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 250 }, 
              format: { with: VALID_EMAIL_REGEX },
              uniqueness: { case_sensitive: false }
    validates :senha, presence: true, length: { maximum: 250 }
    validates :password, presence: true, length: { minimum: 6 }
    validates :idade, presence: true
    validates :rua, presence: true, length: { maximum: 50 }
    validates :bairro, presence: true, length: { maximum: 50 }
    validates :cidade, presence: true, length: { maximum: 50 }
    validates :estado, presence: true, length: { maximum: 50 }
    validates :cep, presence: true, length: { maximum: 8 }
    validates :telefone, presence: true, length: { maximum: 11 }
    has_secure_password
end
