class Series
  def initialize(series)
    @series = series
  end

  def slices(slice_length)
    out = []
    for i in 0..(@series.length-1)
      out.push(@series[i])
    end
    out
  end
end
