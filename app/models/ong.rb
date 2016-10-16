class Ong < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    before_save { self.email = email.downcase }
    VALID_NOME_REGEX = /\A[a-zA-Z ]+\Z/
    validates :nome, presence: true, length: { in: 5..100 },
              format: { with: VALID_NOME_REGEX }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 250 }, 
              format: { with: VALID_EMAIL_REGEX },
              uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 6 }
    validates :rua, presence: true, length: { in: 5..50 }
    validates :bairro, presence: true, length: { in: 5..50 }
    validates :cidade, presence: true, length: { in: 5..50 }
    validates :estado, presence: true, length: { in: 2..2 }
    VALID_CEP_TELEFONE_REGEX = /[^d]/
    validates :cep, presence: true, length: { in: 8..8 },
              format: { with: VALID_CEP_TELEFONE_REGEX }
    validates :telefone, presence: true, length: { in: 10..11 },
              format: { with: VALID_CEP_TELEFONE_REGEX }

end
