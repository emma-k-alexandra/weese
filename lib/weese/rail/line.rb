# frozen_string_literal: true

module Weese
  module Rail
    # WMATA Line Codes and Line helper methods
    module Line
      RD = 'RD' # Red line code
      BL = 'BL' # Blue line code
      YL = 'YL' # Yellow line code
      OR = 'OR' # Orange line code
      GR = 'GR' # Green line code
      SV = 'SV' # Silver line code
      YLRP = 'YLRP' # Yellow Line Rush Plus line code. Deprecated.

      # Extensions to String relating to Lines
      class String
        #
        # Checks if this {String} is a Line code
        #
        # @return [bool] If the current string is a Line Code
        #
        def line?
          case self
          when Line::RD, Line::BL, Line::YL, Line::YL, Line::OR, Line::GR, Line::SV, Line::YLRP
            true
          else
            false
          end
        end

        #
        # Line name for the current Line
        #
        # @return [String] Human-presentable Line name
        #
        def line_name
          case self
          when Line::RD
            'Red'
          when Line::BL
            'Blue'
          when Line::YL
            'Yellow'
          when Line::OR
            'Orange'
          when Line::GR
            'Green'
          when Line::SV
            'Silver'
          when Line::YLRP
            'Yellow Line Rush Plus'
          else
            raise 'Invalid line'
          end
        end
      end
    end

    # These requests require a Line
    module RequiresLine
      include Requests::Requester

      #
      # Station location and address information for all stations on the given line.
      # {https://developer.wmata.com/docs/services/5476364f031f590f38092507/operations/5476364f031f5909e4fe330c WMATA Documentation}
      #
      # @param [String] line A Line code
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def stations(line = nil)
        query = line ? { LineCode: line } : {}

        fetch(
          Requests::Request.new(
            @api_key,
            Rail::Urls::STATIONS,
            query
          )
        )
      end
    end
  end
end
