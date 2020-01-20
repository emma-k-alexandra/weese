# frozen_string_literal: true

module Weese
  module Bus
    module Urls
      ROUTES = 'HTTPS://api.wmata.com/Bus.svc/json/jRoutes'
      STOPS = 'https://api.wmata.com/Bus.svc/json/jStops'
      INCIDENTS = 'https://api.wmata.com/Incidents.svc/json/BusIncidents'
      POSITIONS = 'https://api.wmata.com/Bus.svc/json/jBusPositions'
      PATH_DETAILS = 'https://api.wmata.com/Bus.svc/json/jRouteDetails'
      ROUTE_SCHEDULE = 'https://api.wmata.com/Bus.svc/json/jRouteSchedule'
      NEXT_BUSES = 'https://api.wmata.com/NextBusService.svc/json/jPredictions'
      STOP_SCHEDULE = 'https://api.wmata.com/Bus.svc/json/jStopSchedule'
    end
  end
end
