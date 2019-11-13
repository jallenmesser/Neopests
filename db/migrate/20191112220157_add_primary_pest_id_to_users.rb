class AddPrimaryPestIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :primary_pest_id, :integer
  end
end
