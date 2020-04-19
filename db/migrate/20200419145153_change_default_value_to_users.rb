class ChangeDefaultValueToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :stock, :integer, :default => 0
  end
end
