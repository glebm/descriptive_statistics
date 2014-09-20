module DescriptiveStatistics
  module Calculation
    def variance(collection)
      values = Support::convert(collection)
      return nil if values.empty?

      mean = values.mean
      values.map { |sample| (mean - sample) ** 2 }.inject(:+) / values.number
    end
  end
end
