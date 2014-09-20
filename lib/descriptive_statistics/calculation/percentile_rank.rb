module DescriptiveStatistics
  module Calculation
    # percent of cases that are at or below a score
    def percentile_rank(p, collection)
      values = Support.values(collection)
      ((values.sort.rindex { |x| x <= p } || -1.0) + 1.0) / number(values) * 100.0 unless empty?(values)
    end
  end
end
