# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Volkan Unsal"]
  gem.email         = ["spocksplanet@gmail.com"]
  gem.summary       = %q{Omniauth strategy for WePay}
  gem.homepage      = %q{https://github.com/tenaciousflea/omniauth-wepay}
  gem.description   = %q{Provides an easy way to build OAuth using WePay for Omniauth}


  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-wepay"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Wepay::VERSION
end
