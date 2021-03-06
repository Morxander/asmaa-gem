# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'asmaa/version'

Gem::Specification.new do |spec|
  spec.name          = "asmaa"
  spec.version       = Asmaa::VERSION
  spec.authors       = ["Morad Edwar"]
  spec.email         = ["me@morad-edwar.com"]

  spec.summary       = "Arabian Names Genders"
  spec.description   = "This is a simple gem to detect any Arabian name gender"
  spec.homepage      = "https://github.com/Morxander/asmaa-gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.11"
  spec.add_dependency "rake", ">= 0.8.7"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "sqlite3", "~> 1.3"
end
