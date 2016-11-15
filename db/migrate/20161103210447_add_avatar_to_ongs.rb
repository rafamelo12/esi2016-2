class AddAvatarToOngs < ActiveRecord::Migration
  def change
    add_column :ongs, :avatar, :string
  end
end
