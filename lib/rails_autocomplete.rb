require "rails"
require "active_record"
require "rails_autocomplete/version"
require "rails_autocomplete/engine"
require "rails_autocomplete/railtie"
require "rails_autocomplete/form_helper"

ActiveRecord::Base.extend RailsAutocomplete::ActiveRecordExtension

module RailsAutocomplete
end