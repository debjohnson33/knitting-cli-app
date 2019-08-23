# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'knitting_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "knitting_cli"
  spec.version       = KnittingCli::VERSION
  spec.authors       = ["debjohnson33"]
  spec.email         = ["debjohnson_11@yahoo.com"]

  spec.summary       = %q{CLI that lists knitting patterns}
  spec.description   = %q{CLI that allows user to see knitting pattern information}
  spec.homepage      = "https://github.com/debjohnson33/knitting-cli-app"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
   # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  #spec.files         = `git ls-files -z`.split("\x0").reject do |f|
  #  f.match(%r{^(test|spec|features)/})
  #end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri", "~> 1.10.4"
  spec.add_development_dependency "pry", ">= 0"
end
