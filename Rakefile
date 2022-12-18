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

ruby_version = Gem::Version.new(RUBY_VERSION)
minimum_version = ->(version, engine = "ruby") { ruby_version >= Gem::Version.new(version) && RUBY_ENGINE == engine }
linting = minimum_version.call("3.0")
def rubocop_task(warning)
  desc "rubocop task stub"
  task :rubocop do
    warn warning
  end
end

if linting
  begin
    require "rubocop/rake_task"
    RuboCop::RakeTask.new do |task|
      task.options = ["-DESP"] # Display the name of the failing cops
    end
  rescue LoadError
    rubocop_task("RuboCop is unexpectedly disabled locally for #{RUBY_ENGINE}-#{RUBY_VERSION}. " \
                 "Have you run bundle install?")
  end
else
  rubocop_task("RuboCop is disabled locally for #{RUBY_ENGINE}-#{RUBY_VERSION}. " \
               "If you need it locally on #{RUBY_ENGINE}-#{RUBY_VERSION}, " \
               "run BUNDLE_GEMFILE=gemfiles/style.gemfile bundle install " \
               "&& BUNDLE_GEMFILE=gemfiles/style.gemfile bundle exec rubocop")
end

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
    "rubocop.yml",
    "SECURITY.md"
  ]
  t.options = ["-m", "markdown"] # optional
end

task default: %i[test rubocop]
