class AddIndexToVoluntariosEmail < ActiveRecord::Migration
  def change
    add_index :voluntarios, :email, unique: true
  end
end
