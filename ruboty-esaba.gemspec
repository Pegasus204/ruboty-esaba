
# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/esaba/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruboty-esaba'
  spec.version       = Ruboty::Esaba::VERSION
  spec.authors       = ['Pegasus204']
  spec.email         = ['tenma.fukaya@misoca.jp']

  spec.summary       = 'Show esaba URL by esa URL'
  spec.description   = 'Show esaba URL by esa URL'
  spec.homepage      = 'https://github.com/Pegasus204/ruboty-esaba'

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'dotenv'
  spec.add_dependency 'pry'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'rubocop'
end
