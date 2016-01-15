# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'DPLibrary/version'

Gem::Specification.new do |spec|
  spec.name          = 'DPLibrary'
  spec.version       = DPLibrary::VERSION
  spec.authors       = ['phereford']
  spec.email         = ['phereford@gmail.com']
  spec.description   = %q{Ruby API wrapper for the Digital Public Library of America API}
  spec.summary       = %q{A ruby gem that is an API wrapper for the DPLA}
  spec.homepage      = 'http://github.com/phereford/DPLibrary'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 0.8.7'
  spec.add_dependency 'faraday_middleware', '~> 0.9.0'
  spec.add_dependency 'rake', '>= 10.0.3'

  spec.add_development_dependency 'rspec', '~> 2.13.0'
  spec.add_development_dependency 'vcr', '~> 2.4.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'coveralls'
end
