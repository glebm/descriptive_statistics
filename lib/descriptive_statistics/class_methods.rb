require 'descriptive_statistics/calculation'
module DescriptiveStatistics
  extend Calculation

  Calculation.instance_methods.each do |m|
    define_method(m) do |*args, &block|
      DescriptiveStatistics.send(m, *args, self, &block)
    end
  end
end
