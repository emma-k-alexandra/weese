# frozen_string_literal: true

module Weese
  module Bus
    # URLs for MetroBus related endpoints 
    module Urls
      ROUTES = 'HTTPS://api.wmata.com/Bus.svc/json/jRoutes' # A WMATA endpoint
      STOPS = 'https://api.wmata.com/Bus.svc/json/jStops' # A WMATA endpoint
      INCIDENTS = 'https://api.wmata.com/Incidents.svc/json/BusIncidents' # A WMATA endpoint
      POSITIONS = 'https://api.wmata.com/Bus.svc/json/jBusPositions' # A WMATA endpoint
      PATH_DETAILS = 'https://api.wmata.com/Bus.svc/json/jRouteDetails' # A WMATA endpoint
      ROUTE_SCHEDULE = 'https://api.wmata.com/Bus.svc/json/jRouteSchedule' # A WMATA endpoint
      NEXT_BUSES = 'https://api.wmata.com/NextBusService.svc/json/jPredictions' # A WMATA endpoint
      STOP_SCHEDULE = 'https://api.wmata.com/Bus.svc/json/jStopSchedule' # A WMATA endpoint
    end
  end
end
