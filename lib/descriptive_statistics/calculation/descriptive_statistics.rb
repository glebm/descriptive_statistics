module DescriptiveStatistics
  module Calculation
    def descriptive_statistics(collection)
      {number:             number(collection),
       sum:                sum(collection),
       variance:           variance(collection),
       standard_deviation: standard_deviation(collection),
       min:                min(collection),
       max:                max(collection),
       mean:               mean(collection),
       mode:               mode(collection),
       median:             median(collection),
       range:              range(collection),
       q1:                 percentile(25, collection),
       q2:                 percentile(50, collection),
       q3:                 percentile(75, collection)}
    end
  end
end
