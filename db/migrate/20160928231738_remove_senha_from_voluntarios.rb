class RemoveSenhaFromVoluntarios < ActiveRecord::Migration
  def change
    remove_column :voluntarios, :senha, :string
  end
end
