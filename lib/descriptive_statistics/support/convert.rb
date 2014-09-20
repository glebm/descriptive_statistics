require 'set'

module DescriptiveStatistics

  module Support

    # @param [Enumerable] from
    # @return [Enumerable] if from is a Hash, from.values, otherwise from
    def self.values(from)
      case from
        when Hash
          from.values
        else
          from
      end
    end

  end

end
