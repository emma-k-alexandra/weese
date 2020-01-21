# frozen_string_literal: true

require 'weese/version'

require 'weese/rail/metro_rail'
require 'weese/rail/line'
require 'weese/rail/station'

require 'weese/bus/metro_bus'
require 'weese/bus/route'
require 'weese/bus/stop'

require 'weese/location'

module Weese
  # Error output buy all functions in this gem
  class WeeseError < StandardError; end
end
