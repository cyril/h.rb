# encoding: utf-8

Gem::Specification.new do |s|
  s.name        = 'h'
  s.version     = File.read('VERSION.semver')
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Cyril Wack']
  s.email       = ['contact@cyril.io']
  s.homepage    = 'https://github.com/cyril/h.rb'
  s.summary     = %q{Salted hashes tool}
  s.description = %q{Small tool that generates salted hashes, scented with the SHA2 function, for those who prefer to put makeup on passwords rather than yield them to Manager™.}
  s.license     = 'ISC'

  s.rubyforge_project = 'h'

  s.bindir      = 'bin'
  s.executables = ['h']

  s.add_runtime_dependency 'highline'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map {|f| File.basename(f) }
  s.require_paths = ['lib']
end
