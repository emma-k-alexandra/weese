# frozen_string_literal: true

require 'faraday'
require 'weese/deserialize'

module Weese
  # Structures related to making API requests
  module Requests
    # Everything needed to make an HTTP request
    class Request
      # @return [String] WMATA API key
      attr_accessor :api_key
      # @return [String] URL
      attr_accessor :path
      # @return [Hash] Query parameters
      attr_accessor :query

      #
      # Create a Request
      #
      # @param [String] api_key API key to make this Request with
      # @param [String] path URL to make Request to
      # @param [Hash] query Query parameters to append to Request
      #
      def initialize(api_key, path, query)
        @api_key = api_key
        @path = path
        @query = query
      end
    end

    # Actually making the HTTP request
    module Requester
      #
      # Make a request to WMATA API
      #
      # @param [Request] wmata_request Request to send to WMATA API
      #
      # @raise [WeeseError] If the requests fails in any way
      #
      # @return [String] Body of response
      #
      def request(wmata_request)
        response = Faraday.get(wmata_request.path) do |request|
          request.params = wmata_request.query
          request.headers['api_key'] = wmata_request.api_key
        end

        return response.body if response.success?

        raise WeeseError, "#{response.status}, #{response.body}"
      end

      #
      # Makes a request to WMATA API & deserializes the response into a Hash
      #
      # @param [Request] wmata_request Request to send to WMATA API
      #
      # @raise [WeeseError] If the requests fails in any way
      #
      # @return [Hash] Hash of response JSON
      #
      def fetch(wmata_request)
        request(wmata_request).deserialize
      end
    end
  end
end
