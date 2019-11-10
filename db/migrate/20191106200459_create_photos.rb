class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :image_path
      t.string :caption
      t.integer :location_id
      
      t.timestamps
    end
  end
end
