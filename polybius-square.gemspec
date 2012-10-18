# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'polybius_square/version'

Gem::Specification.new do |gem|
  gem.name          = "polybius-square"
  gem.version       = PolybiusSquare::VERSION
  gem.authors       = ["Nathan Wise"]
  gem.email         = ["nathanwise@gmail.com"]
  gem.description   = %q{Polybius Square decoder}
  gem.summary       = %q{Allows creation of Polybius Squares for decoding messages.}
  gem.homepage      = "https://github.com/nwise/polybius-square"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
