# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'compactor/version'

Gem::Specification.new do |spec|
  spec.name        = "compactor"
  spec.version     = Compactor::VERSION
  spec.authors     = ["Julio Santos"]
  spec.email       = ["julio@morgane.com"]
  spec.homepage    = ""
  spec.license     = "MIT"
  spec.summary     = "Scrape Amazon Seller Central"
  spec.description = "Scrape Amazon Seller Central"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "mechanize", "2.4"

  if RUBY_PLATFORM == "java"
    spec.add_dependency "jruby-openssl", '0.7.3'
    spec.add_dependency "nokogiri", ">= 1.5.0", "< 1.5.3"
  end

  spec.add_development_dependency "rake"
  spec.add_development_dependency "mocha", "0.12.1"
  spec.add_development_dependency "vcr", "~>2.0.0"
  spec.add_development_dependency "fakeweb"
  spec.add_development_dependency "rcov", "0.9.11"
  spec.add_development_dependency "bundler", "~> 1.3"
end
