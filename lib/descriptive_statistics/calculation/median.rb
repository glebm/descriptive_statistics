module DescriptiveStatistics
  module Calculation
    def median(collection)
      values = Support::convert(collection)
      return DescriptiveStatistics.median_empty_collection_default_value unless values.size > 0

      values.percentile(50)
    end
  end
end
