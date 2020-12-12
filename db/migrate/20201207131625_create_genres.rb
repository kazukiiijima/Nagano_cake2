class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres, :id => false do |t|
    	t.integer :id, :primary_key => true
    	t.string :name
    	t.boolean :is_active
    	t.timestamps
    end
  end
end
