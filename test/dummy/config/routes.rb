Rails.application.routes.draw do
  mount BackendGallery::Engine => "/backend_gallery", :as => "/backend_gallery_kasper"
end
