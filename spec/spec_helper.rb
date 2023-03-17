# frozen_string_literal: true

DEBUG = ENV.fetch("DEBUG", nil) == "true"

ruby_version = Gem::Version.new(RUBY_VERSION)
minimum_version = ->(version, engine = "ruby") { ruby_version >= Gem::Version.new(version) && engine == RUBY_ENGINE }
actual_version = lambda do |major, minor|
  actual = Gem::Version.new(ruby_version)
  major == actual.segments[0] && minor == actual.segments[1] && RUBY_ENGINE == "ruby"
end
debugging = minimum_version.call("3.0") && DEBUG
RUN_COVERAGE = minimum_version.call("3.0") && (ENV.fetch("COVER_ALL",
                                                         nil) || ENV.fetch("CI_CODECOV", nil) || ENV["CI"].nil?)
ALL_FORMATTERS = actual_version.call(3,
                                     0) && (ENV.fetch("COVER_ALL",
                                                      nil) || ENV.fetch("CI_CODECOV", nil) || ENV.fetch("CI", nil))

if DEBUG
  if debugging
    require "byebug"
  elsif minimum_version.call("3.0", "jruby")
    require "pry-debugger-jruby"
  end
end

# Load Code Coverage as the last thing before this gem
if RUN_COVERAGE
  require "simplecov" # Config file `.simplecov` is run immediately when simplecov loads
  require "codecov"
  require "simplecov-json"
  require "simplecov-lcov"
  require "simplecov-cobertura"
  if ALL_FORMATTERS
    # This would override the formatter set in .simplecov, if set
    SimpleCov::Formatter::LcovFormatter.config do |c|
      c.report_with_single_file = true
      c.single_report_path = "coverage/lcov.info"
    end

    SimpleCov.formatters = [
      SimpleCov::Formatter::HTMLFormatter,
      SimpleCov::Formatter::CoberturaFormatter, # XML for Jenkins
      SimpleCov::Formatter::LcovFormatter,
      SimpleCov::Formatter::JSONFormatter, # For CodeClimate
      SimpleCov::Formatter::Codecov # For CodeCov
    ]
  end
end

# This gem
require "rubocop/ruby3_0"

# RSpec Configs
require "config/rspec/rspec_core"
