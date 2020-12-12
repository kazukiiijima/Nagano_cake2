class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items, :id => false do |t|
      t.integer :id, :primary_key => true
      t.integer :genre_id
      t.string :name
      t.string :image_id
      t.text :introduction
      t.integer :price
      t.boolean :is_actives
      t.timestamps
    end
  end
end
