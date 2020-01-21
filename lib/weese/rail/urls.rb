# frozen_string_literal: true

module Weese
  module Rail
    # URLS for MetroRail related endpoints
    module Urls
      LINES = 'https://api.wmata.com/Rail.svc/json/jLines' # WMATA Endpoints
      ENTRANCES = 'https://api.wmata.com/Rail.svc/json/jStationEntrances' # WMATA Endpoints
      POSITIONS = 'https://api.wmata.com/TrainPositions/TrainPositions' # WMATA Endpoints
      ROUTES = 'https://api.wmata.com/TrainPositions/StandardRoutes' # WMATA Endpoints
      CIRCUITS = 'https://api.wmata.com/TrainPositions/TrackCircuits' # WMATA Endpoints
      ELEVATOR_AND_ESCALATOR_INCIDENTS = 'https://api.wmata.com/Incidents.svc/json/ElevatorIncidents' # WMATA Endpoints
      INCIDENTS = 'https://api.wmata.com/Incidents.svc/json/Incidents' # WMATA Endpoints
      NEXT_TRAINS = 'https://api.wmata.com/StationPrediction.svc/json/GetPrediction/' # WMATA Endpoints
      INFORMATION = 'https://api.wmata.com/Rail.svc/json/jStationInfo' # WMATA Endpoints
      PARKING_INFORMATION = 'https://api.wmata.com/Rail.svc/json/jStationParking' # WMATA Endpoints
      PATH = 'https://api.wmata.com/Rail.svc/json/jPath' # WMATA Endpoints
      TIMINGS = 'https://api.wmata.com/Rail.svc/json/jStationTimes' # WMATA Endpoints
      STATION_TO_STATION = 'https://api.wmata.com/Rail.svc/json/jSrcStationToDstStationInfo' # WMATA Endpoints
      STATIONS = 'https://api.wmata.com/Rail.svc/json/jStations' # WMATA Endpoint
    end
  end
end
