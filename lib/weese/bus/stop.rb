# frozen_string_literal: true

require 'weese/bus/urls'

module Weese
  module Bus
    # A MetroBus stop.
    class Stop
      # @return [Integer] The WMATA Stop ID of this Stop
      attr_accessor :id

      #
      # Create a Stop
      #
      # @param [Integer] id WMATA Stop ID
      #
      def initialize(id)
        @id = id
      end
    end

    # These requests require a Stop
    module RequiresStop
      include Requests::Requester

      #
      # Next bus arrivals at a given stop.
      # {https://developer.wmata.com/docs/services/5476365e031f590f38092508/operations/5476365e031f5909e4fe331d WMATA Documentation}
      #
      # @param [Stop] stop A Stop
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def next_buses(stop)
        fetch(
          Requests::Request.new(
            @api_key,
            Bus::Urls::NEXT_BUSES,
            StopID: stop.id
          )
        )
      end

      #
      # Buses scheduled at a stop for an optional given date.
      # {https://developer.wmata.com/docs/services/54763629281d83086473f231/operations/5476362a281d830c946a3d6c WMATA Documentation}
      #
      # @param [Stop] stop A Stop
      # @param [Date] date An optional Date
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def stop_schedule(stop, date = nil)
        query = { StopID: stop.id }

        query['Date'] = date.to_s if date

        fetch(
          Requests::Request.new(
            @api_key,
            Bus::Urls::STOP_SCHEDULE,
            query
          )
        )
      end
    end
  end
end
