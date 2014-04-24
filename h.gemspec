# encoding: utf-8

require 'yaml'

Gem::Specification.new do |s|
  s.name        = 'h'
  s.version     = YAML.load_file('VERSION.yml').values.join('.')
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Cyril Wack']
  s.email       = ['contact@cyril.io']
  s.homepage    = 'https://github.com/cyril/h'
  s.summary     = %q{Custom hash generator}
  s.description = %q{A quick tool for those who prefer to put makeup on passwords rather than yield them to Manager™}

  s.rubyforge_project = 'h'

  s.bindir      = 'bin'
  s.executables = ['h']

  s.add_dependency 'highline'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map {|f| File.basename(f) }
  s.require_paths = ['lib']
end
