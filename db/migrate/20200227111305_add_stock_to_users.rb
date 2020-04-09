class AddStockToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :stock, :integer
  end
end
