# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth/roomorama/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Donald Piret"]
  gem.email = ["donald@roomorama.com"]
  gem.description = %q{An OmniAuth 1.0 strategy for Roomorama oauth2 identification.}
  gem.summary = %q{An OmniAuth 1.0 strategy for Roomorama oauth2 identification.}
  gem.homepage = "https://github.com/roomorama/omniauth-roomorama"

  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name = "omniauth-roomorama"
  gem.require_paths = ["lib"]
  gem.version = OmniAuth::Roomorama::VERSION

  gem.add_dependency 'omniauth', '~> 1.1'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'

  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'debugger', '>= 1.3.1'
end