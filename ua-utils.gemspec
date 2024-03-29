$:.push File.expand_path('../lib', __FILE__)

require 'ua-utils'

Gem::Specification.new do |s|
  s.name         = 'ua-utils'
  s.version      = UaUtils::VERSION
  s.platform     = Gem::Platform::RUBY
  s.authors      = %w['Harald Walker']
  s.email        = %w['harald.walker@gmail.com']
  s.homepage     = 'https://github.com/HaraldWalker/ua-utils'
  s.summary      = 'Utility for parsing and handling user-agent strings.'
  s.description  = s.summary

  s.files         = Dir['{bin,lib,spec}/**/*'] + %w[LICENSE README.md]
  s.test_files    = Dir['spec/**/*']
  #s.executables   = %w('ua-utils')

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end
