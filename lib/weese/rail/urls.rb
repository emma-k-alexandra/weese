# frozen_string_literal: true

module Weese
  module Rail
    module Urls
      LINES = 'https://api.wmata.com/Rail.svc/json/jLines'
      ENTRANCES = 'https://api.wmata.com/Rail.svc/json/jStationEntrances'
      POSITIONS = 'https://api.wmata.com/TrainPositions/TrainPositions'
      ROUTES = 'https://api.wmata.com/TrainPositions/StandardRoutes'
      CIRCUITS = 'https://api.wmata.com/TrainPositions/TrackCircuits'
      ELEVATOR_AND_ESCALATOR_INCIDENTS = 'https://api.wmata.com/Incidents.svc/json/ElevatorIncidents'
      INCIDENTS = 'https://api.wmata.com/Incidents.svc/json/Incidents'
      NEXT_TRAINS = 'https://api.wmata.com/StationPrediction.svc/json/GetPrediction/'
      INFORMATION = 'https://api.wmata.com/Rail.svc/json/jStationInfo'
      PARKING_INFORMATION = 'https://api.wmata.com/Rail.svc/json/jStationParking'
      PATH = 'https://api.wmata.com/Rail.svc/json/jPath'
      TIMINGS = 'https://api.wmata.com/Rail.svc/json/jStationTimes'
      STATION_TO_STATION = 'https://api.wmata.com/Rail.svc/json/jSrcStationToDstStationInfo'
      STATIONS = 'https://api.wmata.com/Rail.svc/json/jStations'
    end
  end
end
