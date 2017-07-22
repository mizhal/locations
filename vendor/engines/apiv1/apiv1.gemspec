$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "apiv1/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "apiv1"
  s.version     = Apiv1::VERSION
  s.authors     = ["miguel perez barrero"]
  s.email       = ["mpb.gestion@gmail.com"]
  s.homepage    = "http://github.com/mizhal"
  s.summary     = "Summary of Apiv1."
  s.description = "Description of Apiv1."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.2"
end
