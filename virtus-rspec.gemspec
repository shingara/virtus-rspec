# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'virtus-rspec/version'

Gem::Specification.new do |gem|
  gem.name          = "virtus-rspec"
  gem.version       = Virtus::Rspec::VERSION
  gem.authors       = ["Cyril Mougel"]
  gem.email         = ["cyril.mougel@gmail.com"]
  gem.description   = %q{Rspec matcher to virtus gem}
  gem.summary       = %q{Rspec matcher to virtus gem}
  gem.homepage      = "https://github.com/shingara/virtus-rspec"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
