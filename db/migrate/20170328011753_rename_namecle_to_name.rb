class RenameNamecleToName < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :namecle, :name
  end
end
