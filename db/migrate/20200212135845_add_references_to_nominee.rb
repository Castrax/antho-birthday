class AddReferencesToNominee < ActiveRecord::Migration[5.2]
  def change
    add_reference :nominees, :category, index: true
    add_foreign_key :nominees, :categories
  end
end
