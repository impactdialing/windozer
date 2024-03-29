# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'windozer/version'

Gem::Specification.new do |spec|
  spec.name          = "windozer"
  spec.version       = Windozer::VERSION
  spec.authors       = ["Jeremiah Heller"]
  spec.email         = ["jeremiah@impactdialing.com"]
  spec.description   = %q{Cleans text based files of invalid UTF-8 characters and infamous carriage returns.}
  spec.summary       = %q{Cleans text based files of invalid UTF-8 characters and infamous carriage returns.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
