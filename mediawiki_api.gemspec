# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mediawiki_api/version"

Gem::Specification.new do |spec|
  spec.name          = "mediawiki_api"
  spec.version       = MediawikiApi::VERSION
  spec.authors       = ["Amir Aharoni", "Chris McMahon", "Jeff Hall", "Juliusz Gonera", "Zeljko Filipin"]
  spec.email         = ["amir.aharoni@mail.huji.ac.il", "cmcmahon@wikimedia.org", "jhall@wikimedia.org", "jgonera@wikimedia.org", "zeljko.filipin@gmail.com"]
  spec.summary       = %q{A library for interacting with MediaWiki API from Ruby.}
  spec.description   = %q{Uses adapter-agnostic Faraday gem to talk to the API.}
  spec.homepage      = "https://github.com/zeljkofilipin/mediawiki_api"
  spec.license       = "GPL-2"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.9.0"
  spec.add_dependency "faraday-cookie_jar", "~> 0.0.6"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "webmock", "~> 1.17.2"
end
