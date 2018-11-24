lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop/disallow_safe_navigation/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-disallow_safe_navigation"
  spec.version       = Rubocop::DisallowSafeNavigation::VERSION
  spec.authors       = ["SengMing Tan"]
  spec.email         = ["sengming@sanemen.com"]

  spec.summary       = %q{Code style checking to disallow safe navigation}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/tansengming/rubocop-disallow_safe_navigation"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.3.0'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rubocop', '>= 0.60.0'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
