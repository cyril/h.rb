# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "h/version"

Gem::Specification.new do |s|
  s.name        = "h"
  s.version     = H::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Cyril Wack"]
  s.email       = ["cyril@gosu.fr"]
  s.homepage    = "http://github.com/cyril/h"
  s.summary     = %q{Custom hash generator}
  s.description = %q{Very small cryptographic tool that generates custom message digests according to some parameters.}

  s.rubyforge_project = "h"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
