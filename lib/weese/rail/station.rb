# frozen_string_literal: true

module Weese
  module Rail
    # Constants for WMATA station codes
    module Station
      A01 = 'A01' # A WMATA Station code
      A02 = 'A02' # A WMATA Station code
      A03 = 'A03' # A WMATA Station code
      A04 = 'A04' # A WMATA Station code
      A05 = 'A05' # A WMATA Station code
      A06 = 'A06' # A WMATA Station code
      A07 = 'A07' # A WMATA Station code
      A08 = 'A08' # A WMATA Station code
      A09 = 'A09' # A WMATA Station code
      A10 = 'A10' # A WMATA Station code
      A11 = 'A11' # A WMATA Station code
      A12 = 'A12' # A WMATA Station code
      A13 = 'A13' # A WMATA Station code
      A14 = 'A14' # A WMATA Station code
      A15 = 'A15' # A WMATA Station code
      B01 = 'B01' # A WMATA Station code
      B02 = 'B02' # A WMATA Station code
      B03 = 'B03' # A WMATA Station code
      B04 = 'B04' # A WMATA Station code
      B05 = 'B05' # A WMATA Station code
      B06 = 'B06' # A WMATA Station code
      B07 = 'B07' # A WMATA Station code
      B08 = 'B08' # A WMATA Station code
      B09 = 'B09' # A WMATA Station code
      B10 = 'B10' # A WMATA Station code
      B11 = 'B11' # A WMATA Station code
      B35 = 'B35' # A WMATA Station code
      C01 = 'C01' # A WMATA Station code
      C02 = 'C02' # A WMATA Station code
      C03 = 'C03' # A WMATA Station code
      C04 = 'C04' # A WMATA Station code
      C05 = 'C05' # A WMATA Station code
      C06 = 'C06' # A WMATA Station code
      C07 = 'C07' # A WMATA Station code
      C08 = 'C08' # A WMATA Station code
      C09 = 'C09' # A WMATA Station code
      C10 = 'C10' # A WMATA Station code
      C12 = 'C12' # A WMATA Station code
      C13 = 'C13' # A WMATA Station code
      C14 = 'C14' # A WMATA Station code
      C15 = 'C15' # A WMATA Station code
      D01 = 'D01' # A WMATA Station code
      D02 = 'D02' # A WMATA Station code
      D03 = 'D03' # A WMATA Station code
      D04 = 'D04' # A WMATA Station code
      D05 = 'D05' # A WMATA Station code
      D06 = 'D06' # A WMATA Station code
      D07 = 'D07' # A WMATA Station code
      D08 = 'D08' # A WMATA Station code
      D09 = 'D09' # A WMATA Station code
      D10 = 'D10' # A WMATA Station code
      D11 = 'D11' # A WMATA Station code
      D12 = 'D12' # A WMATA Station code
      D13 = 'D13' # A WMATA Station code
      E01 = 'E01' # A WMATA Station code
      E02 = 'E02' # A WMATA Station code
      E03 = 'E03' # A WMATA Station code
      E04 = 'E04' # A WMATA Station code
      E05 = 'E05' # A WMATA Station code
      E06 = 'E06' # A WMATA Station code
      E07 = 'E07' # A WMATA Station code
      E08 = 'E08' # A WMATA Station code
      E09 = 'E09' # A WMATA Station code
      E10 = 'E10' # A WMATA Station code
      F01 = 'F01' # A WMATA Station code
      F02 = 'F02' # A WMATA Station code
      F03 = 'F03' # A WMATA Station code
      F04 = 'F04' # A WMATA Station code
      F05 = 'F05' # A WMATA Station code
      F06 = 'F06' # A WMATA Station code
      F07 = 'F07' # A WMATA Station code
      F08 = 'F08' # A WMATA Station code
      F09 = 'F09' # A WMATA Station code
      F10 = 'F10' # A WMATA Station code
      F11 = 'F11' # A WMATA Station code
      G01 = 'G01' # A WMATA Station code
      G02 = 'G02' # A WMATA Station code
      G03 = 'G03' # A WMATA Station code
      G04 = 'G04' # A WMATA Station code
      G05 = 'G05' # A WMATA Station code
      J02 = 'J02' # A WMATA Station code
      J03 = 'J03' # A WMATA Station code
      K01 = 'K01' # A WMATA Station code
      K02 = 'K02' # A WMATA Station code
      K03 = 'K03' # A WMATA Station code
      K04 = 'K04' # A WMATA Station code
      K05 = 'K05' # A WMATA Station code
      K06 = 'K06' # A WMATA Station code
      K07 = 'K07' # A WMATA Station code
      K08 = 'K08' # A WMATA Station code
      N01 = 'N01' # A WMATA Station code
      N02 = 'N02' # A WMATA Station code
      N03 = 'N03' # A WMATA Station code
      N04 = 'N04' # A WMATA Station code
      N06 = 'N06' # A WMATA Station code
    end

    # These requests require a Station
    module RequiresStation
      include Requests::Requester

      #
      # Distance, fare information, and estimated travel time between any two stations, including those on different lines.
      # {https://developer.wmata.com/docs/services/5476364f031f590f38092507/operations/5476364f031f5909e4fe3313 WMATA Documentation}
      #
      # @param [String] from_station Station code to start trip at. Optional.
      # @param [String] to_destination_station Destination station code. Optional.
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def station_to_station(from_station = nil, to_destination_station = nil)
        query = {}

        query['FromStationCode'] = from_station if from_station

        query['ToStationCode'] = to_destination_station if to_destination_station

        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::STATION_TO_STATION,
            query
          )
        )
      end

      #
      # List of reported elevator and escalator outages at a given station.
      # {https://developer.wmata.com/docs/services/54763641281d83086473f232/operations/54763641281d830c946a3d76 WMATA Documentation}
      #
      # @param [String] station A station code
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def elevator_and_escalator_incidents(station = nil)
        query = station ? { StationCode: station } : {}

        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::ELEVATOR_AND_ESCALATOR_INCIDENTS,
            query
          )
        )
      end

      #
      # Reported rail incidents (significant disruptions and delays to normal service)
      # {https://developer.wmata.com/docs/services/54763641281d83086473f232/operations/54763641281d830c946a3d77 WMATA Documentation}
      #
      # @param [String] station A station code
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def incidents(station = nil)
        query = station ? { StationCode: station } : {}

        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::INCIDENTS,
            query
          )
        )
      end

      #
      # Next train arrivals for the given station.
      # {https://developer.wmata.com/docs/services/547636a6f9182302184cda78/operations/547636a6f918230da855363f WMATA Documentation}
      #
      # @param [String] station A station code
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def next_trains(station)
        fetch(
          Requests::Request.new(
            @api_key,
            [Rail::Urls::NEXT_TRAINS, station].join('/'),
            {}
          )
        )
      end

      #
      # Location and address information at the given station.
      # {https://developer.wmata.com/docs/services/5476364f031f590f38092507/operations/5476364f031f5909e4fe3310 WMATA Documentation}
      #
      # @param [String] station A station code
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def station_information(station)
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::INFORMATION,
            StationCode: station
          )
        )
      end

      #
      # Parking information for the given station.
      # {https://developer.wmata.com/docs/services/5476364f031f590f38092507/operations/5476364f031f5909e4fe330d WMATA Documentation}
      #
      # @param [String] station A station code
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def parking_information(station)
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::PARKING_INFORMATION,
            StationCode: station
          )
        )
      end

      #
      # Stations and distances between two stations on the same line.
      # {https://developer.wmata.com/docs/services/5476364f031f590f38092507/operations/5476364f031f5909e4fe330e WMATA Documentation}
      #
      # @param [String] station Starting station code
      # @param [String] to_destination_station Destination station code
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def path_from(station, to_destination_station)
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::PATH,
            FromStationCode: station,
            ToStationCode: to_destination_station
          )
        )
      end

      #
      # Opening and scheduled first/last train times for the given station.
      # {https://developer.wmata.com/docs/services/5476364f031f590f38092507/operations/5476364f031f5909e4fe3312 WMATA Documentation}
      #
      # @param [String] station A station code
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def timings(station)
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::TIMINGS,
            StationCode: station
          )
        )
      end
    end
  end
end
