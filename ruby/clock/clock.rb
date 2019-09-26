class Clock
  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    hours = @hour % 24
    minutes_remainder = @minute % 60
    minute_hours_to_add = @minute >= 60 ? @minute / 60 : 0
    hours = create_time_string(hours + minute_hours_to_add)
    minutes = create_time_string(minutes_remainder)

    "#{hours}:#{minutes}"
  end

  private

  def create_time_string(number)
    return number if number > 9
    "0#{number}"
  end
end
