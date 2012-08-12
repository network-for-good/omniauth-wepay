# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Volkan Unsal"]
  gem.email         = ["spocksplanet@gmail.com"]
  gem.summary       = %q{Omniauth strategy for WePay}
  gem.description   = %q{Omniauth strategy for WePay}


  gem.add_runtime_dependency "rest-client"
  gem.add_runtime_dependency "multi_json"


  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-wepay"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Wepay::VERSION
end
