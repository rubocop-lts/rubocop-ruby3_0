# frozen_string_literal: true

%w[
  bundler/gem_tasks
  rake/testtask
  rspec/core/rake_task
].each { |f| require f }

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList["spec/**/*_spec.rb"]
end
desc "alias test task to spec"
task test: :spec

require "yard"
YARD::Rake::YardocTask.new do |t|
  t.files = [
    # Splats (alphabetical)
    "lib/**/*.rb",
    "sig/**/*.rbs",
    # Files (alphabetical)
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "LICENSE.txt",
    "README.md",
    "rubocop-lts.yml",
    "SECURITY.md"
  ]
  t.options = ["-m", "markdown"] # optional
end

# Internally this works
#   load "lib/rubocop/ruby3_0/tasks.rake"
# But ...
#   externally it won't, so in other internal projects' Rakefiles we:
require "rubocop/ruby3_0"
Rubocop::Ruby30.install_tasks

task default: %i[test rubocop_gradual]
