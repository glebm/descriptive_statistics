module DescriptiveStatistics
  module Calculation
    def mean(collection)
      values = Support::convert(collection)
      return nil if values.empty?

      values.sum / values.number
    end
  end
end
