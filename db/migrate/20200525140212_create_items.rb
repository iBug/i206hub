class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.text :html
      t.string :image
      t.string :slug, unique: true

      t.timestamps
    end
  end
end
