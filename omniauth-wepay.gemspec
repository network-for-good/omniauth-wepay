# -*- encoding: utf-8 -*-
$:.unshift File.expand_path('lib', File.dirname(__FILE__))
require 'omniauth/version'

Gem::Specification.new do |gem|
  gem.name          = 'omniauth-wepay'
  gem.version       = OmniAuth::Wepay::VERSION
  gem.authors       = ['Volkan Unsal']
  gem.email         = ['spocksplanet@gmail.com']
  gem.summary       = %q{Omniauth strategy for WePay}
  gem.homepage      = %q{https://github.com/tenaciousflea/omniauth-wepay}
  gem.description   = %q{Provides an easy way to build OAuth using WePay for Omniauth}
  gem.name          = "omniauth-wepay"
  gem.require_paths = ["lib"]
  
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")


  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  
  gem.add_development_dependency 'ritual', '~> 0.4.1'
end
