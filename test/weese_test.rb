# frozen_string_literal: true

require 'test_helper'
require 'weese/rail/metro_rail'
require 'weese/location'

API_KEY = '9e38c3eab34c4e6c990828002828f5ed'

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
    assert_instance_of Hash, @client.lines
  end

  def test_entrances
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

  def test_positions
    assert_instance_of Hash, @client.positions
  end

  def test_routes
    assert_instance_of Hash, @client.routes
  end

  def test_circuits
    assert_instance_of Hash, @client.circuits
  end

  def test_station_to_station
    assert_instance_of(
      Hash,
      @client.station_to_station(
        Weese::Rail::Station::A01,
        Weese::Rail::Station::A02
      )
    )
  end

  def test_elevator_and_escalator_incidents
    assert_instance_of(
      Hash,
      @client.elevator_and_escalator_incidents(
        Weese::Rail::Station::A01
      )
    )
  end

  def test_incidents
    assert_instance_of(
      Hash,
      @client.incidents(Weese::Rail::Station::A01)
    )
  end

  def test_next_trains
    assert_instance_of(
      Hash,
      @client.next_trains(Weese::Rail::Station::A01)
    )
  end

  def test_station_information
    assert_instance_of(
      Hash,
      @client.station_information(Weese::Rail::Station::A01)
    )
  end

  def test_parking_information
    assert_instance_of(
      Hash,
      @client.parking_information(Weese::Rail::Station::A01)
    )
  end

  def test_path_from
    assert_instance_of(
      Hash,
      @client.path_from(
        Weese::Rail::Station::A01,
        Weese::Rail::Station::A02
      )
    )
  end

  def test_timings
    assert_instance_of(
      Hash,
      @client.timings(Weese::Rail::Station::A01)
    )
  end

  def test_stations
    assert_instance_of(
      Hash,
      @client.stations(Weese::Rail::Line::BL)
    )
  end
end
