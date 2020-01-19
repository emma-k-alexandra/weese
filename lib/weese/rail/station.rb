# frozen_string_literal: true

module Weese
  module Rail
    module Station
      A01 = 'A01'
      A02 = 'A02'
      A03 = 'A03'
      A04 = 'A04'
      A05 = 'A05'
      A06 = 'A06'
      A07 = 'A07'
      A08 = 'A08'
      A09 = 'A09'
      A10 = 'A10'
      A11 = 'A11'
      A12 = 'A12'
      A13 = 'A13'
      A14 = 'A14'
      A15 = 'A15'
      B01 = 'B01'
      B02 = 'B02'
      B03 = 'B03'
      B04 = 'B04'
      B05 = 'B05'
      B06 = 'B06'
      B07 = 'B07'
      B08 = 'B08'
      B09 = 'B09'
      B10 = 'B10'
      B11 = 'B11'
      B35 = 'B35'
      C01 = 'C01'
      C02 = 'C02'
      C03 = 'C03'
      C04 = 'C04'
      C05 = 'C05'
      C06 = 'C06'
      C07 = 'C07'
      C08 = 'C08'
      C09 = 'C09'
      C10 = 'C10'
      C12 = 'C12'
      C13 = 'C13'
      C14 = 'C14'
      C15 = 'C15'
      D01 = 'D01'
      D02 = 'D02'
      D03 = 'D03'
      D04 = 'D04'
      D05 = 'D05'
      D06 = 'D06'
      D07 = 'D07'
      D08 = 'D08'
      D09 = 'D09'
      D10 = 'D10'
      D11 = 'D11'
      D12 = 'D12'
      D13 = 'D13'
      E01 = 'E01'
      E02 = 'E02'
      E03 = 'E03'
      E04 = 'E04'
      E05 = 'E05'
      E06 = 'E06'
      E07 = 'E07'
      E08 = 'E08'
      E09 = 'E09'
      E10 = 'E10'
      F01 = 'F01'
      F02 = 'F02'
      F03 = 'F03'
      F04 = 'F04'
      F05 = 'F05'
      F06 = 'F06'
      F07 = 'F07'
      F08 = 'F08'
      F09 = 'F09'
      F10 = 'F10'
      F11 = 'F11'
      G01 = 'G01'
      G02 = 'G02'
      G03 = 'G03'
      G04 = 'G04'
      G05 = 'G05'
      J02 = 'J02'
      J03 = 'J03'
      K01 = 'K01'
      K02 = 'K02'
      K03 = 'K03'
      K04 = 'K04'
      K05 = 'K05'
      K06 = 'K06'
      K07 = 'K07'
      K08 = 'K08'
      N01 = 'N01'
      N02 = 'N02'
      N03 = 'N03'
      N04 = 'N04'
      N06 = 'N06'
    end

    # These requests require a Station
    module RequiresStation
      include Requests::Requester

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

      def next_trains(station)
        fetch(
          Requests::Request.new(
            @api_key,
            [Rail::Urls::NEXT_TRAINS, station].join('/'),
            {}
          )
        )
      end

      def station_information(station)
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::INFORMATION,
            StationCode: station
          )
        )
      end

      def parking_information(station)
        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::PARKING_INFORMATION,
            StationCode: station
          )
        )
      end

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
