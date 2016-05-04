# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omdbcli/version'

Gem::Specification.new do |spec|
  spec.name          = Omdbcli::COMMAND
  spec.version       = Omdbcli::VERSION
  spec.authors       = ['dkhamsing']
  spec.email         = ['dkhamsing8@gmail.com']

  spec.summary       = 'Command line tool for omdbapi'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/dkhamsing/omdbcli'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = [spec.name]
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency 'omdbapi', '~> 0.2.1'
end
