# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'svg_fallback/version'

Gem::Specification.new do |spec|
  spec.name          = "svg_fallback"
  spec.version       = SVGFallback::VERSION
  spec.authors       = ["Daniel Lockhart"]
  spec.email         = ["daniel@lockyy.com"]
  spec.summary       = %q{Adds helper method to rails views for image tags with fallback}
  spec.description   = %q{Adds a helper method to rails views that creates an image_tag that falls back from svg when the user is using a non-modern browser.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "browser", "0.8.0"
end
