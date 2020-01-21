# frozen_string_literal: true

module Weese
  # Classes relating to locations in latitude and longtidue, and radiuses in meters.
  module Location
    # A radius in meters at a {Coordinates}
    class RadiusAtCoordinates
      # @return [Numeric] Radius in meters around coordinates
      attr_accessor :radius
      # @return [Coordinates] A latitude and longitude
      attr_accessor :coordinates

      #
      # Create a Radius at a Coordinates
      #
      # @param [Numeric] radius Distance in meters to check from the given coordinates
      # @param [Coordinates] coordinates Latitude and Longitude to
      #
      def initialize(radius, coordinates)
        @radius = radius
        @coordinates = coordinates
      end

      #
      # Converts this object to a hash
      #
      # @return [Hash] Hash containing radius, latitude and longitude
      #
      def to_h
        {
          radius: radius,
          latitude: coordinates.latitude,
          longitude: coordinates.longitude
        }
      end
    end

    # A latitude and longitude
    class Coordinates
      # @return [Numeric] A latitude
      attr_accessor :latitude
      # @return [Numeric] A longitude
      attr_accessor :longitude

      #
      # Creates a latitude and longitude pair
      #
      # @param [Numeric] latitude A latitude
      # @param [Numeric] longitude A longitude
      #
      def initialize(latitude, longitude)
        @latitude = latitude
        @longitude = longitude
      end
    end
  end
end
