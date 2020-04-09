class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :category, foreign_key: true
      t.references :nominee, foreign_key: true

      t.timestamps
    end
  end
end
