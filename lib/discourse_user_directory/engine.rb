require 'discourse_user_directory/plugin'

module DiscourseUserDirectory
  class Engine < Rails::Engine

    engine_name 'discourse_user_directory'

    initializer "discourse_user_directory.configure_rails_initialization" do |app|

      app.config.after_initialize do 
        DiscoursePluginRegistry.setup(DiscourseUserDirectory::Plugin)
      end
    end

  end
end