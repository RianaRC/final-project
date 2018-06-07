class CreateEvenements < ActiveRecord::Migration[5.2]
  def change
    create_table :evenements do |t|
      t.string :titre
      t.text :description
      t.datetime :date
      t.integer :price
      t.belongs_to :category, foreign_key: true
      t.integer :organisateur_id

      t.timestamps
    end
  end
end
