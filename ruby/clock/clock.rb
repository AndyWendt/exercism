class Clock
  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    hours = @hour % 24
    minutes = @minute % 60
    hours = create_time_string(hours)
    minutes = create_time_string(minutes)

    "#{hours}:#{minutes}"
  end

  private

  def create_time_string(number)
    return number if number > 9
    "0#{number}"
  end
end
