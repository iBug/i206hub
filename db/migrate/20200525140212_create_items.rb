class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :html
      t.string :image
      t.string :slug, unique: true

      t.timestamps
    end
  end
end
