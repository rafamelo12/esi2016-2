class AddInteressesToOngs < ActiveRecord::Migration
  def change
    add_column :ongs, :interesses, :string
  end
end
