# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awsqr/version'

Gem::Specification.new do |spec|
  spec.name          = "awsqr"
  spec.version       = Awsqr::VERSION
  spec.authors       = ["Darius Aliabadi"]
  spec.email         = ["darius@dariusaliabadi.com"]

  spec.summary       = "CLI utility to add issuer field to AWS QR Code for IAM MFA"
  spec.description   = "CLI utility to add issuer field to AWS QR Code for IAM MFA"
  spec.homepage      = "http://github.com/aughban/awsqr"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency "thor", "~> 0.19"
  spec.add_dependency "rqrcode", "~> 0.7"
end
