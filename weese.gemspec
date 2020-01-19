lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "weese/version"

Gem::Specification.new do |spec|
  spec.name          = "weese"
  spec.version       = Weese::VERSION
  spec.authors       = ["Emma K Alexandra"]
  spec.email         = ["emma@emma.sh"]

  spec.summary       = "API Adapter for the WMATA API"
  spec.description   = "Longer description goes here"
  spec.homepage      = "https://github.com/emma-k-alexandra/weese"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/emma-k-alexandra/weese"
  spec.metadata["changelog_uri"] = "https://github.com/emma-k-alexandra/weese/master/CHANGELOG.MD"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.17.3"

  spec.add_development_dependency "bundler", "~> 2.1.a"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
