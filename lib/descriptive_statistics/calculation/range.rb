module DescriptiveStatistics
  module Calculation
    def range(collection)
      values = Support.values(collection)
      values.max - values.min unless empty?(values)
    end
  end
end
