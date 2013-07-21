$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "backend_gallery/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "backend_gallery"
  s.version     = BackendGallery::VERSION
  s.authors     = ["kaspernj"]
  s.email       = ["kaspernj@gmail.com"]
  s.homepage    = "http://www.github.com/kaspernj/backend_gallery"
  s.summary     = "BackendGallery"
  s.description = "BackendGallery"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  # s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
end
