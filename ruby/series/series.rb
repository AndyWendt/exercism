class Series
  def initialize(series)
    @series = series
  end

  def slices(slice_length)
    out = []
    for i in 0..(@series.length-1)
      slice_index_end = (i-1) + slice_length
      next if slice_index_end > @series.length-1
      n = i..slice_index_end
      string = ''
      n.each { |l| string += @series[l] }
      out.push(string)
    end
    out
  end
end
