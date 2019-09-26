class Clock
  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    hours = create_time_string(@hour)
    minutes = create_time_string(@minute)

    "#{hours}:#{minutes}"
  end

  private

  def create_time_string(number)
    return number if number > 9
    "0#{number}"
  end
end
