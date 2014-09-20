module DescriptiveStatistics
  module Calculation
    def standard_deviation(collection)
      values = Support::convert(collection)
      return nil if values.empty?

      Math.sqrt(values.variance)
    end
  end
end
