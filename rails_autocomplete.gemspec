# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_autocomplete/version'

Gem::Specification.new do |gem|
  gem.name          = "rails_autocomplete"
  gem.version       = RailsAutocomplete::VERSION
  gem.authors       = ["Omar Abdel-Wahab"]
  gem.email         = ["owahab@gmail.com"]
  gem.description   = %q{Hassle-free autocomplete for Rails 3}
  gem.summary       = %q{Hassle-free autocomplete for Rails 3}
  gem.homepage      = "http://github.com/rayasocialmedia/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency "rails", ">= 3.1"
  gem.add_dependency "jquery-rails"
  gem.add_dependency "twitter-bootstrap-rails", ">= 2.1.0"
  
  gem.add_development_dependency "bundler", ">= 1.0.0"
  gem.add_development_dependency "rspec", "~> 2.3"
  gem.add_development_dependency "sqlite3-ruby"
end
