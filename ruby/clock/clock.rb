class Clock
  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    minutes_remainder = @minute % 60
    hours = create_time_string(total_hours(@hour + minute_hours_to_add))
    minutes = create_time_string(minutes_remainder)

    "#{hours}:#{minutes}"
  end

  private

  def create_time_string(number)
    return number if number > 9
    "0#{number}"
  end

  def minute_hours_to_add
    return 0 if @minute < 60
    @minute / 60
  end

  def total_hours(hours)
    hours % 24
  end
end
