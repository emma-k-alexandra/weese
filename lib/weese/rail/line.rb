# frozen_string_literal: true

module Weese
  module Rail
    module Line
      RD = 'RD'
      BL = 'BL'
      YL = 'YL'
      OR = 'OR'
      GR = 'GR'
      SV = 'SV'
      YLRP = 'YLRP'

      # Extensions to String relating to Lines
      class String
        def line?
          case self
          when Line::RD, Line::BL, Line::YL, Line::YL, Line::OR, Line::GR, Line::SV, Line::YLRP
            true
          else
            false
          end
        end

        def station_name
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
