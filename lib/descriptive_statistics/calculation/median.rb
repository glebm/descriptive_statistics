module DescriptiveStatistics
  module Calculation
    def median(collection)
      values = Support::convert(collection)
      return nil if values.empty?

      values.percentile(50)
    end
  end
end
