module Rubocop
  module Ruby30
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby3_0

      if Rails.env.test? || Rails.env.development?
        rake_tasks do
          Rubocop::Ruby30.install_tasks
        end
      end
    end
  end
end
