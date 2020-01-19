# frozen_string_literal: true

module Weese
  module Location
    # A radius in meters at a +Coordinates+
    class RadiusAtCoordinates
      attr_accessor :radius, :coordinates

      def initialize(radius, coordinates)
        @radius = radius
        @coordinates = coordinates
      end

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
      attr_accessor :latitude, :longitude

      def initialize(latitude, longitude)
        @latitude = latitude
        @longitude = longitude
      end
    end
  end
end
