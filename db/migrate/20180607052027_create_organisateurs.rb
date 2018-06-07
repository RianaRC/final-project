class CreateOrganisateurs < ActiveRecord::Migration[5.2]
  def change
    create_table :organisateurs do |t|
      t.string :kind
      t.string :name
      t.text :about

      t.timestamps
    end
  end
end
