class AddSobreToOngs < ActiveRecord::Migration
  def change
    add_column :ongs, :sobre, :string
  end
end
