module DescriptiveStatistics
  extend Calculation

  Calculation.instance_methods.each do |m|
    define_method(m) do |*args, &block|
      DescriptiveStatistics.send(m, *args, self, &block)
    end
  end


  class << self

    def empty_collection_default_value
      @empty_collection_default_value
    end

    def empty_collection_default_value=(value)
      @empty_collection_default_value = value
      DescriptiveStatistics.instance_methods.each { |m| default_values[m] = value }
    end

    Calculation.instance_methods.each do |m|
      define_method("#{m}_empty_collection_default_value") do
        default_values[m]
      end
      define_method("#{m}_empty_collection_default_value=") do |value|
        default_values[m] = value
      end
    end

    private

    def default_values
      @default_values ||= {}
    end

  end

end
