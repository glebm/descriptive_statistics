module DescriptiveStatistics
  module Calculation
    def standard_deviation(collection)
      values = Support.values(collection)
      Math.sqrt(values.variance) unless empty?(values)
    end
  end
end
