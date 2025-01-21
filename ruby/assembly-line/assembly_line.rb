class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    return production_rate(0.9) if (5..8).include?(@speed)
    return production_rate(0.8) if 9.eql?(@speed)
    return production_rate(0.77) if 10.eql?(@speed)
    production_rate
  end

  def working_items_per_minute
    production_rate_per_hour.round / 60
  end

  private

  def production_rate(success_rate = 1)
    rate = @speed * 221
    (rate * success_rate).round(3)
  end
end
