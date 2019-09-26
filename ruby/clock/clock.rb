class Clock
  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    minutes = (@hour * 60) + @minute
    minutes_remainder = minutes % 60
    hour_minutes = (minutes - minutes_remainder) / 60
    hours = create_time_string(total_hours(hour_minutes))
    minutes = create_time_string(minutes_remainder)

    "#{hours}:#{minutes}"
  end

  private

  def create_time_string(number)
    return number if number > 9
    "0#{number}"
  end

  def total_hours(hours)
    hours % 24
  end
end
