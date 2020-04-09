class AddColumnNominees < ActiveRecord::Migration[5.2]
  def change
    add_column :nominees, :winner, :boolean
  end
end
