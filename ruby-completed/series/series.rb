class Series
  def initialize(series)
    @series = series
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @series.length
    out = []
    for i in 0..(@series.length-1)
      slice_index_end = (i-1) + slice_length
      next if slice_index_end > @series.length-1
      segment_indexes = i..slice_index_end
      segment = ''
      segment_indexes.each { |l| segment += @series[l] }
      out.push(segment)
    end
    out
  end
end
