module DescriptiveStatistics
  module Calculation
    def variance(collection)
      values = Support.values(collection)
      unless empty?(values)
        mean = values.mean
        sum(values) { |sample| (mean - sample) ** 2 } / number(values)
      end
    end
  end
end
