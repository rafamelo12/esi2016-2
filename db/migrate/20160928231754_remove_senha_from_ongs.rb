class RemoveSenhaFromOngs < ActiveRecord::Migration
  def change
    remove_column :ongs, :senha, :string
  end
end
