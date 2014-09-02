# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-linode/version'

Gem::Specification.new do |gem|
  gem.name          = "vagrant-linode"
  gem.version       = VagrantPlugins::Linode::VERSION
  gem.authors       = ["John Bender"]
  gem.email         = ["john.m.bender@gmail.com"]
  gem.description   = %q{Enables Vagrant to manage Linode linodes}
  gem.summary       = gem.description

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "faraday", ">= 0.8.6"
  gem.add_dependency "json"
  gem.add_dependency "log4r"
end