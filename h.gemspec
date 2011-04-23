# encoding: utf-8

Gem::Specification.new do |s|
  s.name        = "h"
  s.version     = Psych.load_file("VERSION.yml").values.join('.')
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Cyril Wack"]
  s.email       = ["cyril@gosu.fr"]
  s.homepage    = "http://github.com/cyril/h"
  s.summary     = %q{Custom hash generator}
  s.description = %q{A quick tool for those who prefer to put makeup on passwords rather than yield them to Manager™}

  s.required_ruby_version = '>= 1.9.2'

  s.rubyforge_project = 'h'

  s.bindir             = 'bin'
  s.executables        = ['h']

  s.add_dependency 'highline'
  s.add_dependency 'psych'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
