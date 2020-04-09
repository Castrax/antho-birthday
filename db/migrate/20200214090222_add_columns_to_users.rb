class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :prenom, :string
    add_column :users, :nom, :string
  end
end
