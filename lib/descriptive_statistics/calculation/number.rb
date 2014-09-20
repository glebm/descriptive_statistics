module DescriptiveStatistics
  module Calculation
    def number(collection)
      collection.respond_to?(:size) && collection.size || collection.count
    end
  end
end
