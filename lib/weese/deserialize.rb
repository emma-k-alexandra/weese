# frozen_string_literal: true

require 'json'

# Extension to String for deserializing JSON
class String
  def deserialize
    JSON.parse(self)
  rescue JSON::ParserError => e
    raise Error, e.to_s
  end
end
