$:.push File.expand_path('../lib', __FILE__)

require 'ua-utils'

Gem::Specification.new do |s|
  s.name         = 'ua-utils'
  s.version      = UaUtils::VERSION
  s.authors       = %w('Harald Walker')
  s.email        =  %w('harald.walker@gmail.com')
  s.homepage     = 'https://github.com/HaraldWalker/ua-utils'
  s.summary      = 'Utilities to parse user-agent strings.'
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))

  s.files         = Dir['{bin,lib,spec}/**/*'] + %w(LICENSE README)
  s.test_files    = Dir['spec/**/*']
  s.executables   = %w('ua-tools')

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
end
