class TwelveDays
  def self.song
    days = {
      1 => {day: 'first', gift: "a Partridge in a Pear Tree"},
      2 => {day: 'second', gift: "two Turtle Doves"},
      3 => {day: 'third', gift: "three French Hens"},
      4 => {day: 'fourth', gift: "four Calling Birds"},
      5 => {day: 'fifth', gift: "five Gold Rings"},
      6 => {day: 'sixth', gift: "six Geese-a-Laying"},
      7 => {day: 'seventh', gift: "seven Swans-a-Swimming"},
      8 => {day: 'eighth', gift: "eight Maids-a-Milking"},
    }

    days.reduce("") do |string, (key, day)|
      string + "On the #{day[:day]} day of Christmas my true love gave to me: #{day[:gift]}#{previous(days, key)}.\n\n"
    end
  end

  def self.previous(days, current)
    return "" unless current > 1
    gifts = days.select{|key, value| (1...current).include?(key)}.map do |key,day|
      gift = key == 1 ? 'and ' : ''
      gift += day[:gift]
      gift
    end
    ", " + gifts.reverse.join(', ')
  end
end
