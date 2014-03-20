# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'psych/inherit/file/version'

Gem::Specification.new do |spec|
  spec.name          = "psych-inherit-file"
  spec.version       = Psych::Inherit::File::VERSION
  spec.authors       = ["Sebastian Ziebell", "Florian Gilcher"]
  spec.email         = ["sebastian.ziebell@asquera.de", "florian.gilcher@asquera.de"]
  spec.description   = %q{A handler for Psych that allows you to inhert other YAML files,
for example to share certain repetitive definitions.}
  spec.summary       = %q{A handler for Psych allowing you to inherit other files.}
  spec.homepage      = "http://github.com/Asquera/psych-inherit-file"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
