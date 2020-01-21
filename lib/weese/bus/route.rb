# frozen_string_literal: true

module Weese
  module Bus
    # All MetroBus Routes
    module Route
      _10A = '10A' # A WMATA Route ID
      _10B = '10B' # A WMATA Route ID
      _10E = '10E' # A WMATA Route ID
      _10N = '10N' # A WMATA Route ID
      _11Y = '11Y' # A WMATA Route ID
      _11Yv1 = '11Yv1' # A WMATA Route ID
      _11Yv2 = '11Yv2' # A WMATA Route ID
      _11Yv3 = '11Yv3' # A WMATA Route ID
      _11Yv4 = '11Yv4' # A WMATA Route ID
      _15K = '15K' # A WMATA Route ID
      _15Kv1 = '15Kv1' # A WMATA Route ID
      _16A = '16A' # A WMATA Route ID
      _16C = '16C' # A WMATA Route ID
      _16Cv1 = '16Cv1' # A WMATA Route ID
      _16E = '16E' # A WMATA Route ID
      _16G = '16G' # A WMATA Route ID
      _16Gv1 = '16Gv1' # A WMATA Route ID
      _16H = '16H' # A WMATA Route ID
      _16L = '16L' # A WMATA Route ID
      _16Y = '16Y' # A WMATA Route ID
      _16Yv1 = '16Yv1' # A WMATA Route ID
      _17B = '17B' # A WMATA Route ID
      _17G = '17G' # A WMATA Route ID
      _17H = '17H' # A WMATA Route ID
      _17K = '17K' # A WMATA Route ID
      _17L = '17L' # A WMATA Route ID
      _17M = '17M' # A WMATA Route ID
      _18G = '18G' # A WMATA Route ID
      _18H = '18H' # A WMATA Route ID
      _18J = '18J' # A WMATA Route ID
      _18P = '18P' # A WMATA Route ID
      _18Pv1 = '18Pv1' # A WMATA Route ID
      _18Pv2 = '18Pv2' # A WMATA Route ID
      _1A = '1A' # A WMATA Route ID
      _1B = '1B' # A WMATA Route ID
      _1C = '1C' # A WMATA Route ID
      _1Cv1 = '1Cv1' # A WMATA Route ID
      _1Cv2 = '1Cv2' # A WMATA Route ID
      _1Cv3 = '1Cv3' # A WMATA Route ID
      _1Cv4 = '1Cv4' # A WMATA Route ID
      _21A = '21A' # A WMATA Route ID
      _21D = '21D' # A WMATA Route ID
      _22A = '22A' # A WMATA Route ID
      _22Av1 = '22Av1' # A WMATA Route ID
      _22C = '22C' # A WMATA Route ID
      _22F = '22F' # A WMATA Route ID
      _23A = '23A' # A WMATA Route ID
      _23B = '23B' # A WMATA Route ID
      _23Bv1 = '23Bv1' # A WMATA Route ID
      _23T = '23T' # A WMATA Route ID
      _25B = '25B' # A WMATA Route ID
      _25Bv1 = '25Bv1' # A WMATA Route ID
      _25Bv2 = '25Bv2' # A WMATA Route ID
      _25Bv3 = '25Bv3' # A WMATA Route ID
      _26A = '26A' # A WMATA Route ID
      _28A = '28A' # A WMATA Route ID
      _28Av1 = '28Av1' # A WMATA Route ID
      _28F = '28F' # A WMATA Route ID
      _28G = '28G' # A WMATA Route ID
      _29C = '29C' # A WMATA Route ID
      _29G = '29G' # A WMATA Route ID
      _29K = '29K' # A WMATA Route ID
      _29Kv1 = '29Kv1' # A WMATA Route ID
      _29N = '29N' # A WMATA Route ID
      _29Nv1 = '29Nv1' # A WMATA Route ID
      _29W = '29W' # A WMATA Route ID
      _2A = '2A' # A WMATA Route ID
      _2B = '2B' # A WMATA Route ID
      _2Bv1 = '2Bv1' # A WMATA Route ID
      _2Bv2 = '2Bv2' # A WMATA Route ID
      _2Bv3 = '2Bv3' # A WMATA Route ID
      _30N = '30N' # A WMATA Route ID
      _30S = '30S' # A WMATA Route ID
      _31 = '31' # A WMATA Route ID
      _32 = '32' # A WMATA Route ID
      _32v1 = '32v1' # A WMATA Route ID
      _33 = '33' # A WMATA Route ID
      _34 = '34' # A WMATA Route ID
      _36 = '36' # A WMATA Route ID
      _37 = '37' # A WMATA Route ID
      _38B = '38B' # A WMATA Route ID
      _38Bv1 = '38Bv1' # A WMATA Route ID
      _38Bv2 = '38Bv2' # A WMATA Route ID
      _39 = '39' # A WMATA Route ID
      _3A = '3A' # A WMATA Route ID
      _3Av1 = '3Av1' # A WMATA Route ID
      _3T = '3T' # A WMATA Route ID
      _3Tv1 = '3Tv1' # A WMATA Route ID
      _3Y = '3Y' # A WMATA Route ID
      _42 = '42' # A WMATA Route ID
      _43 = '43' # A WMATA Route ID
      _4A = '4A' # A WMATA Route ID
      _4B = '4B' # A WMATA Route ID
      _52 = '52' # A WMATA Route ID
      _52v1 = '52v1' # A WMATA Route ID
      _52v2 = '52v2' # A WMATA Route ID
      _52v3 = '52v3' # A WMATA Route ID
      _54 = '54' # A WMATA Route ID
      _54v1 = '54v1' # A WMATA Route ID
      _59 = '59' # A WMATA Route ID
      _5A = '5A' # A WMATA Route ID
      _54v2 = '54v2' # A WMATA Route ID
      _54v3 = '54v3' # A WMATA Route ID
      _60 = '60' # A WMATA Route ID
      _62 = '62' # A WMATA Route ID
      _62v1 = '62v1' # A WMATA Route ID
      _63 = '63' # A WMATA Route ID
      _64 = '64' # A WMATA Route ID
      _64v1 = '64v1' # A WMATA Route ID
      _70 = '70' # A WMATA Route ID
      _70v1 = '70v1' # A WMATA Route ID
      _74 = '74' # A WMATA Route ID
      _79 = '79' # A WMATA Route ID
      _7A = '7A' # A WMATA Route ID
      _7Av1 = '7Av1' # A WMATA Route ID
      _7Av2 = '7Av2' # A WMATA Route ID
      _7Av3 = '7Av3' # A WMATA Route ID
      _7C = '7C' # A WMATA Route ID
      _7F = '7F' # A WMATA Route ID
      _7Fv1 = '7Fv1' # A WMATA Route ID
      _7M = '7M' # A WMATA Route ID
      _7Mv1 = '7Mv1' # A WMATA Route ID
      _7P = '7P' # A WMATA Route ID
      _7W = '7W' # A WMATA Route ID
      _7Y = '7Y' # A WMATA Route ID
      _7Yv1 = '7Yv1' # A WMATA Route ID
      _80 = '80' # A WMATA Route ID
      _80v1 = '80v1' # A WMATA Route ID
      _80v2 = '80v2' # A WMATA Route ID
      _80v3 = '80v3' # A WMATA Route ID
      _83 = '83' # A WMATA Route ID
      _83v1 = '83v1' # A WMATA Route ID
      _83v2 = '83v2' # A WMATA Route ID
      _83v3 = '83v3' # A WMATA Route ID
      _83v4 = '83v4' # A WMATA Route ID
      _86 = '86' # A WMATA Route ID
      _86v1 = '86v1' # A WMATA Route ID
      _86v2 = '86v2' # A WMATA Route ID
      _87 = '87' # A WMATA Route ID
      _87v1 = '87v1' # A WMATA Route ID
      _87v2 = '87v2' # A WMATA Route ID
      _87v3 = '87v3' # A WMATA Route ID
      _87v4 = '87v4' # A WMATA Route ID
      _87v5 = '87v5' # A WMATA Route ID
      _89 = '89' # A WMATA Route ID
      _89v1 = '89v1' # A WMATA Route ID
      _89M = '89M' # A WMATA Route ID
      _8S = '8S' # A WMATA Route ID
      _8W = '8W' # A WMATA Route ID
      _8Z = '8Z' # A WMATA Route ID
      _90 = '90' # A WMATA Route ID
      _90v1 = '90v1' # A WMATA Route ID
      _90v2 = '90v2' # A WMATA Route ID
      _92 = '92' # A WMATA Route ID
      _92v1 = '92v1' # A WMATA Route ID
      _92v2 = '92v2' # A WMATA Route ID
      _96 = '96' # A WMATA Route ID
      _96v1 = '96v1' # A WMATA Route ID
      _96v2 = '96v2' # A WMATA Route ID
      _96v3 = '96v3' # A WMATA Route ID
      _96v4 = '96v4' # A WMATA Route ID
      _96v5 = '96v5' # A WMATA Route ID
      _97 = '97' # A WMATA Route ID
      _97v1 = '97v1' # A WMATA Route ID
      A12 = 'A12' # A WMATA Route ID
      A12_V1 = 'A12v1' # A WMATA Route ID
      A12_V2 = 'A12v2' # A WMATA Route ID
      A12_V3 = 'A12v3' # A WMATA Route ID
      A2 = 'A2' # A WMATA Route ID
      A2_V1 = 'A2v1' # A WMATA Route ID
      A2_V2 = 'A2v2' # A WMATA Route ID
      A2_V3 = 'A2v3' # A WMATA Route ID
      A31 = 'A31' # A WMATA Route ID
      A32 = 'A32' # A WMATA Route ID
      A33 = 'A33' # A WMATA Route ID
      A4 = 'A4' # A WMATA Route ID
      A4_V1 = 'A4v1' # A WMATA Route ID
      A4_V2 = 'A4v2' # A WMATA Route ID
      A4_V3 = 'A4v3' # A WMATA Route ID
      A4_V4 = 'A4v4' # A WMATA Route ID
      A4_V5 = 'A4v5' # A WMATA Route ID
      A6 = 'A6' # A WMATA Route ID
      A6_V1 = 'A6v1' # A WMATA Route ID
      A7 = 'A7' # A WMATA Route ID
      A8 = 'A8' # A WMATA Route ID
      A8_V1 = 'A8v1' # A WMATA Route ID
      A9 = 'A9' # A WMATA Route ID
      B2 = 'B2' # A WMATA Route ID
      B2_V1 = 'B2v1' # A WMATA Route ID
      B2_V2 = 'B2v2' # A WMATA Route ID
      B2_V3 = 'B2v3' # A WMATA Route ID
      B2_V4 = 'B2v4' # A WMATA Route ID
      B21 = 'B21' # A WMATA Route ID
      B22 = 'B22' # A WMATA Route ID
      B22_V1 = 'B22v1' # A WMATA Route ID
      B24 = 'B24' # A WMATA Route ID
      B24_V1 = 'B24v1' # A WMATA Route ID
      B27 = 'B27' # A WMATA Route ID
      B29 = 'B29' # A WMATA Route ID
      B29_V1 = 'B29v1' # A WMATA Route ID
      B29_V2 = 'B29v2' # A WMATA Route ID
      B30 = 'B30' # A WMATA Route ID
      B8 = 'B8' # A WMATA Route ID
      B8_V1 = 'B8v1' # A WMATA Route ID
      B8_V2 = 'B8v2' # A WMATA Route ID
      B9 = 'B9' # A WMATA Route ID
      B98 = 'B98' # A WMATA Route ID
      B99 = 'B99' # A WMATA Route ID
      C11 = 'C11' # A WMATA Route ID
      C12 = 'C12' # A WMATA Route ID
      C13 = 'C13' # A WMATA Route ID
      C14 = 'C14' # A WMATA Route ID
      C2 = 'C2' # A WMATA Route ID
      C2_V1 = 'C2v1' # A WMATA Route ID
      C2_V2 = 'C2v2' # A WMATA Route ID
      C2_V3 = 'C2v3' # A WMATA Route ID
      C21 = 'C21' # A WMATA Route ID
      C21_V1 = 'C21v1' # A WMATA Route ID
      C21_V2 = 'C21v2' # A WMATA Route ID
      C22 = 'C22' # A WMATA Route ID
      C22_V1 = 'C22v1' # A WMATA Route ID
      C26 = 'C26' # A WMATA Route ID
      C26_V1 = 'C26v1' # A WMATA Route ID
      C28 = 'C28' # A WMATA Route ID
      C28_V1 = 'C28v1' # A WMATA Route ID
      C29 = 'C29' # A WMATA Route ID
      C29_1 = 'C29*1' # A WMATA Route ID
      C29_2 = 'C29*2' # A WMATA Route ID
      C29_4 = 'C29*4' # A WMATA Route ID
      C29_ = 'C29/' # A WMATA Route ID
      C290 = 'C290' # A WMATA Route ID
      C4 = 'C4' # A WMATA Route ID
      C4_V1 = 'C4v1' # A WMATA Route ID
      C4_V2 = 'C4v2' # A WMATA Route ID
      C4_V3 = 'C4v3' # A WMATA Route ID
      C8 = 'C8' # A WMATA Route ID
      C8_V1 = 'C8v1' # A WMATA Route ID
      C8_V2 = 'C8v2' # A WMATA Route ID
      C8_V3 = 'C8v3' # A WMATA Route ID
      D1 = 'D1' # A WMATA Route ID
      D12 = 'D12' # A WMATA Route ID
      D12_V1 = 'D12v1' # A WMATA Route ID
      D12_V2 = 'D12v2' # A WMATA Route ID
      D13 = 'D13' # A WMATA Route ID
      D13_V1 = 'D13v1' # A WMATA Route ID
      D14 = 'D14' # A WMATA Route ID
      D14_V1 = 'D14v1' # A WMATA Route ID
      D14_V2 = 'D14v2' # A WMATA Route ID
      D2 = 'D2' # A WMATA Route ID
      D2_V1 = 'D2v1' # A WMATA Route ID
      D31 = 'D31' # A WMATA Route ID
      D32 = 'D32' # A WMATA Route ID
      D33 = 'D33' # A WMATA Route ID
      D34 = 'D34' # A WMATA Route ID
      D4 = 'D4' # A WMATA Route ID
      D4_V1 = 'D4v1' # A WMATA Route ID
      D4_V2 = 'D4v2' # A WMATA Route ID
      D5 = 'D5' # A WMATA Route ID
      D51 = 'D51' # A WMATA Route ID
      D6 = 'D6' # A WMATA Route ID
      D6_V1 = 'D6v1' # A WMATA Route ID
      D6_V2 = 'D6v2' # A WMATA Route ID
      D6_V3 = 'D6v3' # A WMATA Route ID
      D8 = 'D8' # A WMATA Route ID
      D8_V1 = 'D8v1' # A WMATA Route ID
      E2 = 'E2' # A WMATA Route ID
      E4 = 'E4' # A WMATA Route ID
      E4_V1 = 'E4v1' # A WMATA Route ID
      E4_V2 = 'E4v2' # A WMATA Route ID
      E6 = 'E6' # A WMATA Route ID
      F1 = 'F1' # A WMATA Route ID
      F12 = 'F12' # A WMATA Route ID
      F12_V1 = 'F12v1' # A WMATA Route ID
      F13 = 'F13' # A WMATA Route ID
      F13_V1 = 'F13v1' # A WMATA Route ID
      F13_V2 = 'F13v2' # A WMATA Route ID
      F13_V3 = 'F13v3' # A WMATA Route ID
      F14 = 'F14' # A WMATA Route ID
      F14_V1 = 'F14v1' # A WMATA Route ID
      F2 = 'F2' # A WMATA Route ID
      F2_V1 = 'F2v1' # A WMATA Route ID
      F2_V2 = 'F2v2' # A WMATA Route ID
      F4 = 'F4' # A WMATA Route ID
      F4_V1 = 'F4v1' # A WMATA Route ID
      F4_V2 = 'F4v2' # A WMATA Route ID
      F6 = 'F6' # A WMATA Route ID
      F6_V1 = 'F6v1' # A WMATA Route ID
      F6_V2 = 'F6v2' # A WMATA Route ID
      F8 = 'F8' # A WMATA Route ID
      F99 = 'F99' # A WMATA Route ID
      G12 = 'G12' # A WMATA Route ID
      G12_V1 = 'G12v1' # A WMATA Route ID
      G12_V2 = 'G12v2' # A WMATA Route ID
      G14 = 'G14' # A WMATA Route ID
      G14_V1 = 'G14v1' # A WMATA Route ID
      G14_V2 = 'G14v2' # A WMATA Route ID
      G2 = 'G2' # A WMATA Route ID
      G2_V1 = 'G2v1' # A WMATA Route ID
      G8 = 'G8' # A WMATA Route ID
      G8_V1 = 'G8v1' # A WMATA Route ID
      G8_V2 = 'G8v2' # A WMATA Route ID
      G8_V3 = 'G8v3' # A WMATA Route ID
      G9 = 'G9' # A WMATA Route ID
      G9_V1 = 'G9v1' # A WMATA Route ID
      H1 = 'H1' # A WMATA Route ID
      H11 = 'H11' # A WMATA Route ID
      H12 = 'H12' # A WMATA Route ID
      H12_V1 = 'H12v1' # A WMATA Route ID
      H13 = 'H13' # A WMATA Route ID
      H2 = 'H2' # A WMATA Route ID
      H3 = 'H3' # A WMATA Route ID
      H4 = 'H4' # A WMATA Route ID
      H4_V1 = 'H4v1' # A WMATA Route ID
      H6 = 'H6' # A WMATA Route ID
      H6_V1 = 'H6v1' # A WMATA Route ID
      H8 = 'H8' # A WMATA Route ID
      H9 = 'H9' # A WMATA Route ID
      J1 = 'J1' # A WMATA Route ID
      J1_V1 = 'J1v1' # A WMATA Route ID
      J12 = 'J12' # A WMATA Route ID
      J12_V1 = 'J12v1' # A WMATA Route ID
      J2 = 'J2' # A WMATA Route ID
      J2_V1 = 'J2v1' # A WMATA Route ID
      J2_V2 = 'J2v2' # A WMATA Route ID
      J4 = 'J4' # A WMATA Route ID
      K12 = 'K12' # A WMATA Route ID
      K12_V1 = 'K12v1' # A WMATA Route ID
      K12_V2 = 'K12v2' # A WMATA Route ID
      K2 = 'K2' # A WMATA Route ID
      K6 = 'K6' # A WMATA Route ID
      K6_V1 = 'K6v1' # A WMATA Route ID
      K9 = 'K9' # A WMATA Route ID
      K9_V1 = 'K9v1' # A WMATA Route ID
      L1 = 'L1' # A WMATA Route ID
      L2 = 'L2' # A WMATA Route ID
      L2_V1 = 'L2v1' # A WMATA Route ID
      L2_V2 = 'L2v2' # A WMATA Route ID
      L99 = 'L99' # A WMATA Route ID
      L8 = 'L8' # A WMATA Route ID
      M4 = 'M4' # A WMATA Route ID
      M4_V1 = 'M4v1' # A WMATA Route ID
      M4_V2 = 'M4v2' # A WMATA Route ID
      M6 = 'M6' # A WMATA Route ID
      M6_V1 = 'M6v1' # A WMATA Route ID
      MW1 = 'MW1' # A WMATA Route ID
      M99 = 'M99' # A WMATA Route ID
      N2 = 'N2' # A WMATA Route ID
      N4 = 'N4' # A WMATA Route ID
      N4_V1 = 'N4v1' # A WMATA Route ID
      N6 = 'N6' # A WMATA Route ID
      NH1 = 'NH1' # A WMATA Route ID
      NH2 = 'NH2' # A WMATA Route ID
      P12 = 'P12' # A WMATA Route ID
      P12_V1 = 'P12v1' # A WMATA Route ID
      P12_V2 = 'P12v2' # A WMATA Route ID
      P18 = 'P18' # A WMATA Route ID
      P19 = 'P19' # A WMATA Route ID
      P6 = 'P6' # A WMATA Route ID
      P6_V1 = 'P6v1' # A WMATA Route ID
      P6_V2 = 'P6v2' # A WMATA Route ID
      P6_V3 = 'P6v3' # A WMATA Route ID
      P6_V4 = 'P6v4' # A WMATA Route ID
      P99 = 'P99' # A WMATA Route ID
      Q1 = 'Q1' # A WMATA Route ID
      Q2 = 'Q2' # A WMATA Route ID
      Q2_V1 = 'Q2v1' # A WMATA Route ID
      Q2_V2 = 'Q2v2' # A WMATA Route ID
      Q4 = 'Q4' # A WMATA Route ID
      Q4_V1 = 'Q4v1' # A WMATA Route ID
      Q5 = 'Q5' # A WMATA Route ID
      Q6 = 'Q6' # A WMATA Route ID
      Q6_V1 = 'Q6v1' # A WMATA Route ID
      R1 = 'R1' # A WMATA Route ID
      R12 = 'R12' # A WMATA Route ID
      R12_V1 = 'R12v1' # A WMATA Route ID
      R2 = 'R2' # A WMATA Route ID
      R2_V1 = 'R2v1' # A WMATA Route ID
      R2_V2 = 'R2v2' # A WMATA Route ID
      R4 = 'R4' # A WMATA Route ID
      REX = 'REX' # A WMATA Route ID
      REX_V1 = 'REXv1' # A WMATA Route ID
      REX_V2 = 'REXv2' # A WMATA Route ID
      REX_V3 = 'REXv3' # A WMATA Route ID
      REX_V4 = 'REXv4' # A WMATA Route ID
      S1 = 'S1' # A WMATA Route ID
      S2 = 'S2' # A WMATA Route ID
      S2_V1 = 'S2v1' # A WMATA Route ID
      S35 = 'S35' # A WMATA Route ID
      S4 = 'S4' # A WMATA Route ID
      S41 = 'S41' # A WMATA Route ID
      S80 = 'S80' # A WMATA Route ID
      S80_V1 = 'S80v1' # A WMATA Route ID
      S80_V2 = 'S80v2' # A WMATA Route ID
      S9 = 'S9' # A WMATA Route ID
      S9_V1 = 'S9v1' # A WMATA Route ID
      S91 = 'S91' # A WMATA Route ID
      S91_V1 = 'S91v1' # A WMATA Route ID
      SH99 = 'SH99' # A WMATA Route ID
      T14 = 'T14' # A WMATA Route ID
      T14_V1 = 'T14v1' # A WMATA Route ID
      T18 = 'T18' # A WMATA Route ID
      T18_V1 = 'T18v1' # A WMATA Route ID
      T2 = 'T2' # A WMATA Route ID
      U4 = 'U4' # A WMATA Route ID
      U4_V1 = 'U4v1' # A WMATA Route ID
      U4_V2 = 'U4v2' # A WMATA Route ID
      U5 = 'U5' # A WMATA Route ID
      U6 = 'U6' # A WMATA Route ID
      U6_V1 = 'U6v1' # A WMATA Route ID
      U6_V2 = 'U6v2' # A WMATA Route ID
      U7 = 'U7' # A WMATA Route ID
      U7_V1 = 'U7v1' # A WMATA Route ID
      U7_V2 = 'U7v2' # A WMATA Route ID
      U7_V3 = 'U7v3' # A WMATA Route ID
      U7_V4 = 'U7v4' # A WMATA Route ID
      V1 = 'V1' # A WMATA Route ID
      V12 = 'V12' # A WMATA Route ID
      V14 = 'V14' # A WMATA Route ID
      V14_V1 = 'V14v1' # A WMATA Route ID
      V2 = 'V2' # A WMATA Route ID
      V2_V1 = 'V2v1' # A WMATA Route ID
      V4 = 'V4' # A WMATA Route ID
      V4_V1 = 'V4v1' # A WMATA Route ID
      V7 = 'V7' # A WMATA Route ID
      V8 = 'V8' # A WMATA Route ID
      W1 = 'W1' # A WMATA Route ID
      W14 = 'W14' # A WMATA Route ID
      W14_V1 = 'W14v1' # A WMATA Route ID
      W14_V2 = 'W14v2' # A WMATA Route ID
      W2 = 'W2' # A WMATA Route ID
      W2_V1 = 'W2v1' # A WMATA Route ID
      W2_V2 = 'W2v2' # A WMATA Route ID
      W2_V3 = 'W2v3' # A WMATA Route ID
      W2_V4 = 'W2v4' # A WMATA Route ID
      W2_V5 = 'W2v5' # A WMATA Route ID
      W2_V6 = 'W2v6' # A WMATA Route ID
      W2_V7 = 'W2v7' # A WMATA Route ID
      W3 = 'W3' # A WMATA Route ID
      W3_V1 = 'W3v1' # A WMATA Route ID
      W4 = 'W4' # A WMATA Route ID
      W4_V1 = 'W4v1' # A WMATA Route ID
      W4_V2 = 'W4v2' # A WMATA Route ID
      W45 = 'W45' # A WMATA Route ID
      W47 = 'W47' # A WMATA Route ID
      W5 = 'W5' # A WMATA Route ID
      W6 = 'W6' # A WMATA Route ID
      W6_V1 = 'W6v1' # A WMATA Route ID
      W8 = 'W8' # A WMATA Route ID
      W8_V1 = 'W8v1' # A WMATA Route ID
      W8_V2 = 'W8v2' # A WMATA Route ID
      X1 = 'X1' # A WMATA Route ID
      X2 = 'X2' # A WMATA Route ID
      X2_V1 = 'X2v1' # A WMATA Route ID
      X2_V2 = 'X2v2' # A WMATA Route ID
      X2_V3 = 'X2v3' # A WMATA Route ID
      X3 = 'X3' # A WMATA Route ID
      X3_V1 = 'X3v1' # A WMATA Route ID
      X8 = 'X8' # A WMATA Route ID
      X9 = 'X9' # A WMATA Route ID
      X9_V1 = 'X9v1' # A WMATA Route ID
      X9_V2 = 'X9v2' # A WMATA Route ID
      Y2 = 'Y2' # A WMATA Route ID
      Y7 = 'Y7' # A WMATA Route ID
      Y8 = 'Y8' # A WMATA Route ID
      Z11 = 'Z11' # A WMATA Route ID
      Z11_V1 = 'Z11v1' # A WMATA Route ID
      Z2 = 'Z2' # A WMATA Route ID
      Z2_V1 = 'Z2v1' # A WMATA Route ID
      Z2_V2 = 'Z2v2' # A WMATA Route ID
      Z2_V3 = 'Z2v3' # A WMATA Route ID
      Z6 = 'Z6' # A WMATA Route ID
      Z6_V1 = 'Z6v1' # A WMATA Route ID
      Z6_V2 = 'Z6v2' # A WMATA Route ID
      Z7 = 'Z7' # A WMATA Route ID
      Z7_V1 = 'Z7v1' # A WMATA Route ID
      Z8 = 'Z8' # A WMATA Route ID
      Z8_V1 = 'Z8v1' # A WMATA Route ID
      Z8_V2 = 'Z8v2' # A WMATA Route ID
      Z8_V3 = 'Z8v3' # A WMATA Route ID
      Z8_V4 = 'Z8v4' # A WMATA Route ID
      Z8_V5 = 'Z8v5' # A WMATA Route ID
      Z8_V6 = 'Z8v6' # A WMATA Route ID
    end

    # These requests require a Route
    module RequiresRoute
      include Requests::Requester

      #
      # Bus positions for the given route at radius around coordinates
      # {https://developer.wmata.com/docs/services/54763629281d83086473f231/operations/5476362a281d830c946a3d68 WMATA Documentation}
      #
      # @param [String] route A Route ID
      # @param [RadiusAtCoordinates] radius_at_coordinates Radius in meters at a lat/long

      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def positions(route = nil, radius_at_coordinates = nil)
        query = {}

        query['Route'] = route if route

        query.update(radius_at_coordinates.to_h) if radius_at_coordinates

        fetch(
          Requests::Request.new(
            @api_key,
            Bus::Urls::POSITIONS,
            query
          )
        )
      end

      #
      # Reported bus incidents/delays for a given route.
      # {https://developer.wmata.com/docs/services/54763641281d83086473f232/operations/54763641281d830c946a3d75 WMATA Documentation}
      #
      # @param [String] route A Route ID
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def incidents(route = nil)
        query = {}

        query['Route'] = route if route

        fetch(
          Requests::Request.new(
            @api_key,
            Bus::Urls::INCIDENTS,
            query
          )
        )
      end

      #
      # For an optional given date, returns the set of ordered latitude/longitude
      # points along a route variant along with the list of stops served.
      # {https://developer.wmata.com/docs/services/54763629281d83086473f231/operations/5476362a281d830c946a3d69 WMATA Documentation}
      #
      # @param [String] route A Route ID
      # @param [Date] date A Date
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def path(route, date = nil)
        query = { 'RouteID': route }

        query['Date'] = date.to_s if date

        fetch(
          Requests::Request.new(
            @api_key,
            Bus::Urls::PATH_DETAILS,
            query
          )
        )
      end

      #
      # Schedules for a given route variant for an optional given date.
      # {https://developer.wmata.com/docs/services/54763629281d83086473f231/operations/5476362a281d830c946a3d6b}
      #
      # @note Date: Omit date for current date
      # @note Variations: Whether or not to include variations if a base route is specified in Route. For example, if B30 is specified and IncludingVariations is set to true, data for all variations of B30 such as B30v1, B30v2, etc. will be returned.
      #
      # @param [String] route A Route ID
      # @param [bool] including_variations If variations of Route should be included
      # @param [Date] date Date of check schedule of
      #
      # @raise [WeeseError] If request or JSON parse fails
      #
      # @return [Hash] JSON Response
      #
      def route_schedule(route, including_variations, date = nil)
        query = { 'RouteID': route }

        query['IncludingVariations'] = including_variations if including_variations

        query['Date'] = date.to_s if date

        fetch(
          Requests::Request.new(
            @api_key,
            Bus::Urls::ROUTE_SCHEDULE,
            query
          )
        )
      end
    end
  end
end
