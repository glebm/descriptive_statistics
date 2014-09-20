module DescriptiveStatistics
  module Calculation
    def range(collection)
      values = Support::convert(collection)
      return nil if values.empty?

      values.max - values.min
    end
  end
end
