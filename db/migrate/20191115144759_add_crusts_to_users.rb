class AddCrustsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :crusts, :integer, default: 0
  end
end
