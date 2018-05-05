# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vk_api_simple/version'

Gem::Specification.new do |spec|
  spec.name = 'vk_api_simple'
  spec.version = VkApiSimple::VERSION
  spec.authors = ['kortirso']
  spec.email = ['kortirso@gmail.com']

  spec.summary = 'Integration with Vkontakte API'
  spec.description = 'Integration with Vkontakte API'
  spec.homepage = 'https://github.com/kortirso/vk_api_simple'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.49.1'
end
