Gem::Specification.new do |spec|
  spec.name          = 'h'
  spec.version       = File.read('VERSION.semver')
  spec.authors       = ['Cyril Wack']
  spec.email         = ['contact@cyril.io']
  spec.homepage      = 'https://github.com/cyril/h.rb'
  spec.summary       = %q{Salted hashes tool}
  spec.description   = %q{Small tool that generates salted hashes, scented with the SHA2 function, for those who prefer to put makeup on passwords rather than yield them to Manager™.}
  spec.license       = 'ISC'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) {|f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^test/})
  spec.require_paths = ['lib']

  spec.add_dependency             'highline', '~> 1'

  spec.add_development_dependency 'bundler',  '~> 1.6'
  spec.add_development_dependency 'minitest', '~> 5'
  spec.add_development_dependency 'rake',     '~> 10'
end
