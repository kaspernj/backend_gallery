class CreateBackendGalleryPictures < ActiveRecord::Migration
  def change
    create_table :backend_gallery_pictures do |t|
      t.integer :group_id
      t.string :user_type
      t.integer :user_id

      t.timestamps
    end
  end
end
