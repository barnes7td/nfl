# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nfl/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_development_dependency 'rake', '~> 0.9'
  gem.add_development_dependency 'rspec', '~> 2.6'
  gem.add_development_dependency 'simplecov', '~> 0.4'
  gem.add_development_dependency 'webmock', '~> 1.6'
  gem.add_runtime_dependency 'faraday', '~> 0.7.4'
  gem.add_runtime_dependency 'faraday_middleware', '~> 0.7.0'
  gem.authors = ['William T Nelson']
  gem.description = %q{A Ruby wrapper for querying NFL data}
  gem.post_install_message = nil
  gem.email = ['wtn@notational.net']
  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files = `git ls-files`.split("\n")
  gem.homepage = 'https://github.com/wtn/nfl'
  gem.name = 'nfl'
  gem.require_paths = ['lib']
  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6')
  gem.summary = %q{Ruby wrapper for NFL data}
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version = NFL::VERSION.dup
end
