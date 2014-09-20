module DescriptiveStatistics
  module Calculation
    def median(collection)
      values = Support.values(collection)
      values.percentile(50) unless empty?(values)
    end
  end
end
