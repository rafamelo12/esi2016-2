class AddPasswordDigestToVoluntarios < ActiveRecord::Migration
  def change
    add_column :voluntarios, :password_digest, :string
  end
end
