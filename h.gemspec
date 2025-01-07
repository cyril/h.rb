# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name         = "h"
  spec.version      = File.read("VERSION.semver")
  spec.author       = "Cyril Kato"
  spec.email        = "contact@cyril.email"
  spec.summary      = "Salted hashes tool"

  spec.description  = <<~DESC
    Small tool that generates salted hashes, scented with the SHA2 function, for those who prefer to put makeup on passwords rather than yield them to Manager™.
  DESC

  spec.homepage     = "https://github.com/cyril/h.rb"
  spec.license      = "MIT"
  spec.files        = Dir["LICENSE.md", "README.md", "lib/**/*", "bin/h"]
  spec.executables  = ["h"]

  spec.required_ruby_version = ">= 3.1.0"
  spec.metadata["rubygems_mfa_required"] = "true"
end
