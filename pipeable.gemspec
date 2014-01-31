# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pipeable/version'

Gem::Specification.new do |spec|
  spec.name          = "pipeable"
  spec.version       = Pipeable::VERSION
  spec.authors       = ["Brandon Weaver"]
  spec.email         = ["keystonelemur@gmail.com"]
  spec.summary       = %q{A Mock at Unix Piping in Ruby}
  spec.homepage      = "https://www.github.com/baweaver/pipeable"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
