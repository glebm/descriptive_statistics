module DescriptiveStatistics
  module Calculation
    def range(collection)
      values = Support::convert(collection)
      return DescriptiveStatistics.range_empty_collection_default_value unless values.size > 0

      values.max - values.min
    end
  end
end
