module DescriptiveStatistics
  module Calculation
    def mean(values)
      sum(values) / number(values).to_f unless empty?(values)
    end
  end
end
