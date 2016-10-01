class CreateVoluntarios < ActiveRecord::Migration
  def change
    create_table :voluntarios do |t|
      t.string :email
      t.string :senha
      t.string :nome
      t.integer :idade
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
