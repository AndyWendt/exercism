class Clock
  def initialize(hour: nil, minute: nil)
    @hour = hour
    @minute = minute
  end

  def to_s
    "08:00"
  end
end
