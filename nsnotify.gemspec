# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nsnotify/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Wouter de Vos"]
  gem.email         = ["Nsnotify@foxycoder.com"]
  gem.description   = %q{Notifications through the OS X Notification Center.}
  gem.summary       = %q{Notifications through the OS X Notification Center available since OS X 10.8 Mountain Lion.}
  gem.homepage      = "https://github.com/foxycoder/nsnotify"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "nsnotify"
  gem.require_paths = ["lib"]
  gem.version       = Nsnotify::VERSION

  gem.add_development_dependency 'rspec', '~> 2.11'
end
