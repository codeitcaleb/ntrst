class CreateTagPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_photos do |t|
      t.integer :tag_id
      t.integer :photo_id
    end
  end
end
