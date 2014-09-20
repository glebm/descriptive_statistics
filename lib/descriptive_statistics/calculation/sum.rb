module DescriptiveStatistics
  module Calculation
    def sum(identity = 0, collection, &block)
      values = Support::convert(collection)
      if block
        values.inject(identity) { |a, b| a + block.call(b) }
      else
        values.inject(identity, :+)
      end
    end
  end
end
