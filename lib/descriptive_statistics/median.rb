module DescriptiveStatistics
  def median(collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.empty_collection_default_value unless values.size > 0

    values.percentile(50)
  end 
end
