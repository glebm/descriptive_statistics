module DescriptiveStatistics
  module Calculation
    def sum(collection)
      values = Support::convert(collection)
      return DescriptiveStatistics.sum_empty_collection_default_value unless values.size > 0

      return values.inject(:+)
    end
  end
end
