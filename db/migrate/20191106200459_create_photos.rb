class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :image
      t.text :caption
      t.integer :location_id
      
      t.timestamps
    end
  end
end
