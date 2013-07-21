require "backend_gallery/engine"

module BackendGallery
  def self.path=(newpath)
    @path = newpath
  end
  
  def self.path
    return @path
  end
end
