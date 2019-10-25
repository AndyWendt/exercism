class TwelveDays
  def self.song
    days = {
      1 => {day: 'first', gift: "a Partridge in a Pear Tree"},
      2 => {day: 'second', gift: "two Turtle Doves"},
      3 => {day: 'third', gift: "three French Hens"},
      4 => {day: 'fourth', gift: "four Calling Birds"},
    }

    days.reduce("") do |string, (key, day)|
      string + "On the #{day[:day]} day of Christmas my true love gave to me: #{previous(days, key)}#{day[:gift]}.\n"
    end
  end

  def self.previous(days, current)
    return "" unless current > 1
  end
end
