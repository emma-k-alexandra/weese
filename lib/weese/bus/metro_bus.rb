# frozen_string_literal: true

require 'weese/bus/stop'

module Weese
  module Bus
    # MetroBus client. Used for accessing MetroBus-related WMATA APIs.
    class MetroBus
      include Bus::RequiresStop

      attr_accessor :api_key

      def initialize(api_key)
        @api_key = api_key
      end
    end
  end
end
