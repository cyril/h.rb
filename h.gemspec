Gem::Specification.new do |spec|
  spec.name          = 'h'
  spec.version       = File.read('VERSION.semver')
  spec.authors       = ['Cyril Wack']
  spec.email         = ['contact@cyril.email']
  spec.homepage      = 'https://github.com/cyril/h.rb'
  spec.summary       = 'Salted hashes tool'
  spec.description   = 'Small tool that generates salted hashes, scented ' \
                       'with the SHA2 function, for those who prefer to put ' \
                       'makeup on passwords rather than yield them to Manager™.'
  spec.license       = 'ISC'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^test\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',    '~> 1.8'
  spec.add_development_dependency 'fix',        '~> 0.9'
  spec.add_development_dependency 'rake',       '~> 10.4'
  spec.add_development_dependency 'yard',       '~> 0.8'
  spec.add_development_dependency 'coveralls',  '~> 0.8'
end
