class CreateBackendGalleryGroups < ActiveRecord::Migration
  def change
    create_table :backend_gallery_groups do |t|
      t.string :user_type
      t.integer :user_id

      t.timestamps
    end
  end
end
