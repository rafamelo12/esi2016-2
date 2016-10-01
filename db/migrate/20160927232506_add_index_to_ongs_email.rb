class AddIndexToOngsEmail < ActiveRecord::Migration
  def change
    add_index :ongs, :email, unique: true
  end
end
