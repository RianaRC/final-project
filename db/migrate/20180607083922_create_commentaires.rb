class CreateCommentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaires do |t|
      t.string :comment
      t.belongs_to :evenement, foreign_key: true

      t.timestamps
    end
  end
end
