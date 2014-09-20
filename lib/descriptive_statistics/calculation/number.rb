module DescriptiveStatistics
  module Calculation
    def number(collection)
      values = Support::extract(collection)

      values.size.to_f
    end
  end
end
