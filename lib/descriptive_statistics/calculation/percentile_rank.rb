module DescriptiveStatistics
  module Calculation
    # percent of cases that are at or below a score
    def percentile_rank(p, collection)
      values = Support::convert(collection)
      return DescriptiveStatistics.percentile_rank_empty_collection_default_value unless values.size > 0

      return (((values.sort.rindex { |x| x <= p } || -1.0) + 1.0)) / values.number * 100.0
    end
  end
end
