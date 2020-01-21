# frozen_string_literal: true

require 'json'

# Extension to String for deserializing JSON
class String
  #
  # Convert this {String} into a JSON Hash
  #
  # @raise [WeeseError] If JSON parse fails
  #
  # @return [Hash] Hash representing the given JSON
  #
  def deserialize
    JSON.parse(self)
  rescue JSON::ParserError => e
    raise WeeseError, e.to_s
  end
end
