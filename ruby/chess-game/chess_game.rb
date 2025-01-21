module Chess
  RANKS = 1..8
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.include?(rank.to_i) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    formatted_first_name = first_name[0..1].upcase

    if last_name.length.eql?(2)
      formatted_last_name = last_name[0..1].upcase
    else
      formatted_last_name = last_name[-2..-1].upcase
    end

    "#{formatted_first_name}#{formatted_last_name}"
  end

  def self.move_message(first_name, last_name, square)
    return "#{self.nick_name(first_name, last_name)} attempted to move to #{square}, but that is not a valid square" if self.valid_square?(square[1], square[0]) == false
    "#{self.nick_name(first_name, last_name)} moved to #{square}"
  end
end
