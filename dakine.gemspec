# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dakine/version'

Gem::Specification.new do |spec|
  spec.name          = "dakine"
  spec.version       = Dakine::VERSION
  spec.authors       = ["Sam Samskies"]
  spec.email         = ["samprofessional@gmail.com"]
  spec.description   = %q{Translates English to Hawaiian Pidgin English}
  spec.summary       = %q{Translates English to Hawaiian Pidgin English}
  spec.homepage      = "https://github.com/SamSamskies/dakine"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "m"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-reporters"
  spec.add_dependency "engtagger"
end
