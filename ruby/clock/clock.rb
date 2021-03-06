class Clock
  attr_reader :hour, :minute
  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    time = calc_time(@hour, @minute)
    "#{time[:hours]}:#{time[:minutes]}"
  end

  def +(clock_b)
    hour = @hour + clock_b.hour
    minute = @minute + clock_b.minute
    Clock.new(hour: hour, minute: minute)
  end

  def -(clock_b)
    hour = @hour - clock_b.hour
    minute = @minute - clock_b.minute
    Clock.new(hour: hour, minute: minute)
  end

  def ==(clock_b)
    a = calc_time(@hour, @minute)
    b = calc_time(clock_b.hour, clock_b.minute)

    a[:hours] == b[:hours] && a[:minutes] == b[:minutes]
  end

  private

  def calc_time(hour, minute)
    minutes = (hour * 60) + minute
    minutes_remainder = minutes % 60
    hour_minutes = (minutes - minutes_remainder) / 60
    hours = create_time_string(total_hours(hour_minutes))
    minutes = create_time_string(minutes_remainder)

    {
      hours: hours,
      minutes: minutes
    }
  end

  def create_time_string(number)
    return number if number > 9
    "0#{number}"
  end

  def total_hours(hours)
    hours % 24
  end
end
