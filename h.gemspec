# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name         = 'h'
  spec.version      = File.read('VERSION.semver')
  spec.author       = 'Cyril Kato'
  spec.email        = 'contact@cyril.email'
  spec.homepage     = 'https://github.com/cyril/h.rb'
  spec.summary      = 'Salted hashes tool'
  spec.description  = 'Small tool that generates salted hashes, scented '    \
                      'with the SHA2 function, for those who prefer to put ' \
                      'makeup on passwords rather than yield them to Manager™.'
  spec.license      = 'MIT'
  spec.files        = Dir['LICENSE.md', 'README.md', 'lib/**/*']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'fix', '~> 1.0.0.beta4'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'rubocop-thread_safety'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'yard'
end
