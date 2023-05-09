module Rubocop
  module Ruby30
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby3_0

      rake_tasks do
        load "rubocop/ruby3_0/tasks.rake" if Rails.env.test? || Rails.env.development?
      end
    end
  end
end
