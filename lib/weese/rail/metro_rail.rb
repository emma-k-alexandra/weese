# frozen_string_literal: true

require 'weese/requests'
require 'weese/rail/urls'
require 'weese/rail/station'
require 'weese/rail/line'
require 'weese/location'

module Weese
  module Rail
    # MetroRail client. Used for accessing MetroRail-related WMATA APIs.
    class MetroRail
      include Requests::Requester
      include Rail::RequiresStation
      include Rail::RequiresLine

      attr_accessor :api_key

      def initialize(api_key)
        @api_key = api_key
      end

      def lines
        fetch(
          Requests::Request.new(
            api_key,
            Rail::Urls::LINES,
            {}
          )
        )
      end

      def entrances(radius_at_coordinates)
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::ENTRANCES,
            radius_at_coordinates.to_h
          )
        )
      end

      def positions
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::POSITIONS,
            contentType: 'json'
          )
        )
      end

      def routes
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::ROUTES,
            contentType: 'json'
          )
        )
      end

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
