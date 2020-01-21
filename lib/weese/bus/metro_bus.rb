# frozen_string_literal: true

require 'weese/bus/stop'
require 'weese/bus/route'

module Weese
  # MetroBus related structures. Most important: {MetroBus}
  module Bus
    # MetroBus client. Used for accessing MetroBus-related WMATA APIs.
    class MetroBus
      include Requests::Requester
      include Bus::RequiresStop
      include Bus::RequiresRoute

      # @return [String] WMATA API key
      attr_accessor :api_key

      #
      # MetroBus client. Used for accessing MetroBus related endpoints
      #
      # @param [String] api_key WMATA API key, get one at {http://developer.wmata.com}
      #
      def initialize(api_key)
        @api_key = api_key
      end

      #
      # List of all bus route variants.
      # {https://developer.wmata.com/docs/services/54763629281d83086473f231/operations/5476362a281d830c946a3d6a WMATA Documentation}
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def routes
        fetch(
          Requests::Request.new(
            @api_key,
            Bus::Urls::ROUTES,
            {}
          )
        )
      end

      #
      # Nearby bus stops based on latitude, longitude, and radius.
      # {https://developer.wmata.com/docs/services/54763629281d83086473f231/operations/5476362a281d830c946a3d6d WMATA Documentation}
      #
      # @param [RadiusAtCoordinates] radius_at_coordinates A radius in meters around a lat/long
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def stops(radius_at_coordinates = nil)
        query = radius_at_coordinates ? radius_at_coordinates.to_h : {}

        fetch(
          Requests::Request.new(
            @api_key,
            Bus::Urls::STOPS,
            query
          )
        )
      end
    end
  end
end
