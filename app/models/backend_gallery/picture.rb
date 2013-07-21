module BackendGallery
  class Picture < ActiveRecord::Base
    translates :title
  end
end
