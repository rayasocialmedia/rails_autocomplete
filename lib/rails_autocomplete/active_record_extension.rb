module RailsAutocomplete
  module ActiveRecordExtension
    def autocomplete attr, query
      where("LOWER(#{attr}) LIKE ?", "%#{query}%")
    end
  end
end