require 'action_view/helpers/capture_helper'
require 'action_view/helpers/sanitize_helper'
require 'action_view/helpers/url_helper'
require 'action_view/helpers/text_helper'
require "action_view/helpers/tag_helper"
require "action_view/helpers/form_tag_helper"

class ActionView::Helpers::FormBuilder
  include ActionView::Helpers::FormTagHelper
  include ActionView::Helpers::TagHelper
  
  def autocomplete_field name, path
    output = text_field_tag("#{name}_autocomplete", nil, {  "class" => "autocomplete", "data-autocomplete-url" => path, "data-provide" => "typeahead", "data-source" => "rails_autocomplete", "autocomplete" => "off" }).html_safe
    output << self.hidden_field(name).html_safe
    output
  end
end
