class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :pests, :type, :species
  end
end
