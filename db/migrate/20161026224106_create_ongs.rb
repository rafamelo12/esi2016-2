class CreateOngs < ActiveRecord::Migration
  def change
    create_table :ongs do |t|
      t.string :nome
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :rua
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :telefone

      t.timestamps null: false
    end
  end
end
