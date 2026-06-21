# frozen_string_literal: true

# external libs
require "version_gem"

# this gem
require_relative "ruby3_0/version"
# simplecov:disable
require_relative "ruby3_0/railtie" if defined?(Rails::Railtie)
# simplecov:enable

module Rubocop
  # Namespace of this library
  module Ruby30
    module_function def install_tasks
      load("rubocop/ruby3_0/tasks.rb")
    end
  end
end

Rubocop::Ruby30::Version.class_eval do
  extend VersionGem::Basic
end
