# -*- encoding: utf-8 -*-

require File.expand_path('../lib/icepick/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'icepick'
  gem.version       = Icepick::VERSION
  gem.author        = 'Sean Callan'
  gem.email         = 'seancallan@gmail.com'
  gem.license       = 'MIT'
  gem.homepage      = 'https://github.com/doomspork/icepick'
  gem.summary       = 'Pry bundled with plugins and helpful configurations.'
  gem.description   = gem.summary
   
  gem.executables   = ['icepick']
  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ['lib']

  # Dependencies
  gem.required_ruby_version = '>= 2.0.0'
  gem.add_runtime_dependency 'pry',                 '~> 0.9.12'
  gem.add_runtime_dependency 'pry-doc',             '~> 0.6.0'
  gem.add_runtime_dependency 'pry-stack_explorer',  '~> 0.4.9'
  gem.add_runtime_dependency 'pry-byebug',          '~> 1.3.2'
  gem.add_runtime_dependency 'colorize',            '~> 0.7.2'
  gem.add_runtime_dependency 'awesome_print',       '~> 1.2'
end
