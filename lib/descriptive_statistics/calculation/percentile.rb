module DescriptiveStatistics
  module Calculation
    def percentile(p, collection)
      values = Support.values(collection)
      size   = number(values)
      case size
        when 0
          nil
        when 1
          values.first
        else
          return values.max if p == 100
          sorted = values.sort
          rank  = p / 100.0 * (size - 1)
          lrank = rank.floor
          d     = rank - lrank
          lower = sorted[lrank]
          upper = sorted[lrank+1]
          lower + (upper - lower) * d
      end
    end
  end
end
