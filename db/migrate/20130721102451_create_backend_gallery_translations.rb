class CreateBackendGalleryTranslations < ActiveRecord::Migration
  def up
    BackendGallery::Group.create_translation_table!(:title => :text)
    BackendGallery::Picture.create_translation_table!(:title => :text)
  end
  
  def down
    BackendGallery::Group.drop_translation_table!(:title => :text)
    BackendGallery::Picture.drop_translation_table!(:title => :text)
  end
end
