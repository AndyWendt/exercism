class ResistorColorDuo
  def self.value(colors)
    color_numbers = {
      black: 0,
      brown: 1,
      red: 2,
      orange: 3,
      yellow: 4,
      green: 5,
      blue: 6,
      violet: 7,
      grey: 8,
      white: 9,
    }

    (color_numbers[colors[0].to_sym].to_s + color_numbers[colors[1].to_sym].to_s).to_i
  end
end
