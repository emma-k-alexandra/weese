# frozen_string_literal: true

require 'faraday'
require 'weese/deserialize'

module Weese
  # Structures related to making API requests
  module Requests
    # Everything needed to make an HTTP request
    class Request

      attr_accessor :api_key, :path, :query

      def initialize(api_key, path, query)
        @api_key = api_key
        @path = path
        @query = query
      end
    end

    # Actually making the HTTP request
    module Requester
      def request(wmata_request)
        response = Faraday.get(wmata_request.path) do |request|
          request.params = wmata_request.query
          request.headers['api_key'] = wmata_request.api_key
        end

        return response.body if response.success?

        raise Error, "#{response.status}, #{response.body}"
      end

      def fetch(wmata_request)
        request(wmata_request).deserialize
      end
    end
  end
end
