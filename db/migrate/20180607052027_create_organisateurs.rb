class CreateOrganisateurs < ActiveRecord::Migration[5.2]
  def change
    create_table :organisateurs do |t|
      t.string :title
      t.text :about
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
