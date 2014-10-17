$:.push File.expand_path('../lib', __FILE__)
require 'icepick/version'

Gem::Specification.new do |gem|
  gem.name          = 'icepick'
  gem.version       = Icepick::VERSION
  gem.authors       = ['doomspork']
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
  gem.add_runtime_dependency 'awesome_print',       '~> 1.2'
  gem.add_runtime_dependency 'colorize',            '~> 0.7'
  gem.add_runtime_dependency 'pry',                 '~> 0.10'
  gem.add_runtime_dependency 'pry-byebug',          '~> 2.0'
  gem.add_runtime_dependency 'pry-doc',             '~> 0.6'
  gem.add_runtime_dependency 'pry-docmore',         '~> 0.1'
  gem.add_runtime_dependency 'pry-rescue',          '~> 1.4'
  gem.add_runtime_dependency 'pry-stack_explorer',  '~> 0.4'
end
