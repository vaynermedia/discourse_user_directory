$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "discourse_user_directory/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "discourse_user_directory"
  s.version     = DiscourseUserDirectory::VERSION
  s.authors     = ["sbauch@vaynermedia.com"]
  s.email       = ["sbauch@vaynermedia.com"]
  s.homepage    = "http://vaynermedia.com"
  s.summary     = "User directory for Discourse."
  s.description = "User directory for Discourse."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_dependency "coffee-rails"
end
