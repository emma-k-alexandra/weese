# frozen_string_literal: true

require 'vcr'
require 'test_helper'
require 'weese/rail/metro_rail'
require 'weese/bus/metro_bus'
require 'weese/location'

API_KEY = '9e38c3eab34c4e6c990828002828f5ed'

VCR.configure do |config|
  config.cassette_library_dir = 'test/fixtures'
  config.hook_into :faraday
end

class WeeseTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Weese::VERSION
  end
end

class MetroRailTest < Minitest::Test
  def setup
    @client = Weese::Rail::MetroRail.new API_KEY
  end

  def test_lines
    VCR.use_cassette('lines') do
      assert_instance_of Hash, @client.lines
    end
  end

  def test_entrances
    VCR.use_cassette('entrances') do
      assert_instance_of(
        Hash,
        @client.entrances(
          Weese::Location::RadiusAtCoordinates.new(
            1000,
            Weese::Location::Coordinates.new(
              38.8817596,
              -77.0166426
            )
          )
        )
      )
    end
  end

  def test_positions
    VCR.use_cassette('positions') do
      assert_instance_of Hash, @client.positions
    end
  end

  def test_routes
    VCR.use_cassette('routes') do
      assert_instance_of Hash, @client.routes
    end
  end

  def test_circuits
    VCR.use_cassette('circuits') do
      assert_instance_of Hash, @client.circuits
    end
  end

  def test_station_to_station
    VCR.use_cassette('station_to_station') do
      assert_instance_of(
        Hash,
        @client.station_to_station(
          Weese::Rail::Station::A01,
          Weese::Rail::Station::A02
        )
      )
    end
  end

  def test_elevator_and_escalator_incidents
    VCR.use_cassette('elevator_and_escalator_incidents') do
      assert_instance_of(
        Hash,
        @client.elevator_and_escalator_incidents(
          Weese::Rail::Station::A01
        )
      )
    end
  end

  def test_incidents
    VCR.use_cassette('incidents') do
      assert_instance_of(
        Hash,
        @client.incidents(Weese::Rail::Station::A01)
      )
    end
  end

  def test_next_trains
    VCR.use_cassette('next_trains') do
      assert_instance_of(
        Hash,
        @client.next_trains(Weese::Rail::Station::A01)
      )
    end
  end

  def test_station_information
    VCR.use_cassette('station_information') do
      assert_instance_of(
        Hash,
        @client.station_information(Weese::Rail::Station::A01)
      )
    end
  end

  def test_parking_information
    VCR.use_cassette('parking_information') do
      assert_instance_of(
        Hash,
        @client.parking_information(Weese::Rail::Station::A01)
      )
    end
  end

  def test_path_from
    VCR.use_cassette('path_from') do
      assert_instance_of(
        Hash,
        @client.path_from(
          Weese::Rail::Station::A01,
          Weese::Rail::Station::A02
        )
      )
    end
  end

  def test_timings
    VCR.use_cassette('timings') do
      assert_instance_of(
        Hash,
        @client.timings(Weese::Rail::Station::A01)
      )
    end
  end

  def test_stations
    VCR.use_cassette('stations') do
      assert_instance_of(
        Hash,
        @client.stations(Weese::Rail::Line::BL)
      )
    end
  end
end

class TestMetroBus < MiniTest::Test
  def setup
    @client = Weese::Bus::MetroBus.new API_KEY
  end

  def test_next_buses
    VCR.use_cassette('next_buses') do
      assert_instance_of(
        Hash,
        @client.next_buses(Weese::Bus::Stop.new(1_001_195))
      )
    end
  end

  def test_stop_schedule
    VCR.use_cassette('stop_schedule') do
      assert_instance_of(
        Hash,
        @client.stop_schedule(Weese::Bus::Stop.new(1_001_195))
      )
    end
  end

  def test_positions
    VCR.use_cassette('bus_positions') do
      assert_instance_of(
        Hash,
        @client.positions
      )
    end
  end

  def test_bus_incidents
    VCR.use_cassette('bus_incidents') do
      assert_instance_of(
        Hash,
        @client.incidents
      )
    end
  end

  def test_path
    VCR.use_cassette('path') do
      assert_instance_of(
        Hash,
        @client.path(Weese::Bus::Route::A12)
      )
    end
  end

  def test_route_schedule
    VCR.use_cassette('route_schedule') do
      assert_instance_of(
        Hash,
        @client.route_schedule(Weese::Bus::Route::A12, true)
      )
    end
  end

  def test_bus_routes
    VCR.use_cassette('bus_routes') do
      assert_instance_of(
        Hash,
        @client.routes
      )
    end
  end

  def test_stops
    VCR.use_cassette('stops') do
      assert_instance_of(
        Hash,
        @client.stops
      )
    end
  end
end
