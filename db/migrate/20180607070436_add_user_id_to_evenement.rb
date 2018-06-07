class AddUserIdToEvenement < ActiveRecord::Migration[5.2]
  def change
    add_column :evenements, :user_id, :integer
  end
end
