# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uptimer/version'

Gem::Specification.new do |spec|
  spec.name          = 'uptimer'
  spec.version       = Uptimer::VERSION
  spec.authors       = ['yuri-g']
  spec.email         = ['yuri.goncharenko@gmail.com']
  spec.summary       = %q{}
  spec.homepage      = ""
  spec.license       = 'MIT'

  spec.files         = Dir['{bin,lib,test,spec,config}/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'

  spec.add_dependency 'mail'
  spec.add_dependency 'nexmo'
end
