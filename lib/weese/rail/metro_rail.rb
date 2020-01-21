# frozen_string_literal: true

require 'weese/requests'
require 'weese/rail/urls'
require 'weese/rail/station'
require 'weese/rail/line'
require 'weese/location'

module Weese
  # Module containing everything MetroRail. Most important class: {MetroRail}.
  module Rail
    # MetroRail client. Used for accessing MetroRail-related WMATA APIs. See {RequiresLine} and {RequiresStation} for all API calls.
    class MetroRail
      include Requests::Requester
      include Rail::RequiresStation
      include Rail::RequiresLine

      # @return [String] WMATA API key
      attr_accessor :api_key

      #
      # A MetroRail client, used for accessing all MetroRail-related APIs
      #
      # @param [String] api_key WMATA API Key, get one at {http://developer.wmata.com}
      #
      def initialize(api_key)
        @api_key = api_key
      end

      #
      # Basic information on all MetroRail lines.
      # {https://developer.wmata.com/docs/services/5476364f031f590f38092507/operations/5476364f031f5909e4fe330c WMATA Documentation}
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] Response JSON
      #
      def lines
        fetch(
          Requests::Request.new(
            api_key,
            Rail::Urls::LINES,
            {}
          )
        )
      end

      #
      # A list of nearby station entrances based on latitude, longitude, and radius (meters).
      # {https://developer.wmata.com/docs/services/5476364f031f590f38092507/operations/5476364f031f5909e4fe330f WMATA Documentation}
      #
      # @param [RadiusAtCoordinates] radius_at_coordinates Radius and lat/long to look around
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] Response JSON
      #
      def entrances(radius_at_coordinates)
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::ENTRANCES,
            radius_at_coordinates.to_h
          )
        )
      end

      #
      # Uniquely identifiable trains in service and what track circuits they currently occupy.
      # {https://developer.wmata.com/docs/services/5763fa6ff91823096cac1057/operations/5763fb35f91823096cac1058 WMATA Documentation}
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] Response JSON
      #
      def positions
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::POSITIONS,
            contentType: 'json'
          )
        )
      end

      #
      # Returns an ordered list of mostly revenue (and some lead) track circuits, arranged by line and track number.
      # {https://developer.wmata.com/docs/services/5763fa6ff91823096cac1057/operations/57641afc031f59363c586dca WMATA Documentation}
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] Response JSON
      #
      def routes
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::ROUTES,
            contentType: 'json'
          )
        )
      end

      #
      # All track circuits including those on pocket tracks and crossovers. Each track circuit may include references to its right and left neighbors.
      # {https://developer.wmata.com/docs/services/5763fa6ff91823096cac1057/operations/57644238031f59363c586dcb WMATA Documentation}
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] Response JSON
      #
      def circuits
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::CIRCUITS,
            contentType: 'json'
          )
        )
      end
    end
  end
end
