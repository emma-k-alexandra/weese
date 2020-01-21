# frozen_string_literal: true

require 'weese/bus/stop'
require 'weese/bus/route'

module Weese
  module Bus
    # MetroBus client. Used for accessing MetroBus-related WMATA APIs.
    class MetroBus
      include Requests::Requester
      include Bus::RequiresStop
      include Bus::RequiresRoute

      attr_accessor :api_key

      def initialize(api_key)
        @api_key = api_key
      end

      def routes
        fetch(
          Requests::Request.new(
            @api_key,
            Bus::Urls::ROUTES,
            {}
          )
        )
      end

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
