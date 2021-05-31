class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :caption
      t.string :image_one
      t.integer :owner_id
      t.string :location
      t.string :image_two
      t.string :image_three

      t.timestamps
    end
  end
end
