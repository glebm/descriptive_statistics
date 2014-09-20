module DescriptiveStatistics
  module Calculation
    def mode(collection)
      values = Support::extract(collection)
      return unless values.size > 0

      values
      .group_by { |e| e }
      .values
      .max_by(&:size)
      .first
    end
  end
end
