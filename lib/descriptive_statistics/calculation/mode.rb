module DescriptiveStatistics
  module Calculation
    def mode(collection)
      values = Support::values(collection)
      values
      .group_by { |e| e }
      .values
      .max_by(&:size)
      .first unless empty?(values)
    end
  end
end
