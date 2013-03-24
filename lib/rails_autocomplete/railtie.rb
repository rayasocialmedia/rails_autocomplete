require "rails_autocomplete/active_record_extension"

module RailsAutocomplete
  class Railtie < ::Rails::Railtie
    config.before_initialize do
      ActiveSupport.on_load :active_record do
        include RailsAutocomplete::ActiveRecordExtension
      end
    end
  end
end