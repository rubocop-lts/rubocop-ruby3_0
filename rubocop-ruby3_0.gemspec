# frozen_string_literal: true

require_relative "lib/rubocop/ruby3_0/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-ruby3_0"
  spec.version = Rubocop::Ruby30::VERSION
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  spec.summary = "Semantically Versioned Rubocop Dependency"
  spec.description = "Links dependency on minimum Ruby version to maximum Rubocop version"
  spec.homepage = "https://github.com/rubocop-semver/rubocop-ruby3_0"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/rubocop-ruby3_0/#{spec.version}"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/wiki"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir["lib/**/*.rb", "CHANGELOG.md", "CODE_OF_CONDUCT.md", "CONTRIBUTING.md", "LICENSE.txt", "README.md",
                   "SECURITY.md"]
  spec.test_files = Dir["spec/**/*"]
  spec.bindir = "exe"
  spec.executables = []
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 1.28.2"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
