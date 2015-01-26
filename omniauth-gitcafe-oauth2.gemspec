# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-gitcafe-oauth2/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = "Xyu Wang"
  gem.email         = "awsam@gitcafe.com"
  gem.description   = %q{OmniAuth Oauth2 strategy for gitcafe.com.}
  gem.summary       = %q{OmniAuth Oauth2 strategy for gitcafe.com.}
  gem.homepage      = "https://gitcafe.com/awsam/omniauth-gitcafe-oauth2"
  
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-gitcafe-oauth2"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::GitCafeOauth2::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
end
