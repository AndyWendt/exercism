class TwelveDays
  def self.song
    days = {
      1 => {day: 'first', gift: "a Partridge in a Pear Tree"},
      2 => {day: 'second', gift: "two Turtle Doves"},
      3 => {day: 'third', gift: "three French Hens"},
      4 => {day: 'fourth', gift: "four Calling Birds"},
    }
    days

    # 'On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.'
    # for i in 1..12
    #
    # end

    "On the #{days[1][:day]} day of Christmas my true love gave to me: #{days[1][:gift]}.\n"
  end
end
