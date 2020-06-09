class AddIndexToItems < ActiveRecord::Migration[6.0]
  def change
    add_index :items, [:category_id, :slug], unique: true
  end
end
