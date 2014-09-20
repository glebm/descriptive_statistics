module DescriptiveStatistics
  module Calculation
    def sum(identity = 0, collection)
      values = Support::convert(collection)
      return identity if values.empty?

      return values.inject(:+)
    end
  end
end
