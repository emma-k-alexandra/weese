# frozen_string_literal: true

require 'weese/bus/urls'

module Weese
  module Bus
    # A MetroBus stop.
    class Stop
      attr_accessor :id

      def initialize(id)
        @id = id
      end
    end

    # These requests require a Stop
    module RequiresStop
      include Requests::Requester

      def next_buses(stop)
        fetch(
          Requests::Request.new(
            @api_key,
            Bus::Urls::NEXT_BUSES,
            StopID: stop.id
          )
        )
      end

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
