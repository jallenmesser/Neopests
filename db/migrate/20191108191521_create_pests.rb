class CreatePests < ActiveRecord::Migration[6.0]
  def change
    create_table :pests do |t|
      t.string :name
      t.string :type
      t.string :color
      t.string :home
      t.integer :user_id

      t.timestamps
    end
  end
end
