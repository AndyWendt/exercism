module Blackjack
  def self.parse_card(card)
    case card
    when 'ace'
      11
    when 'two'
      2
    when 'three'
      3
    when 'four'
      4
    when 'five'
      5
    when 'six'
      6
    when 'seven'
      7
    when 'eight'
      8
    when 'nine'
      9
    when 'ten', 'jack', 'queen', 'king'
      10
    else
      0
    end
  end

  def self.card_range(card1, card2)
    total = self.parse_card(card1) + self.parse_card(card2)

    case total
    when 4..11
      'low'
    when 12..16
      'mid'
    when 17..20
      'high'
    when 21
      'blackjack'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    total = self.parse_card(card1) + self.parse_card(card2)
    dealer_card_value = self.parse_card(dealer_card)

    return "P" if total.eql?(22)
    return 'W' if total.eql?(21) && (!(10..11).include?(dealer_card_value))
    return 'H' if (12..16).include?(total) && (dealer_card_value >= 7)
    return 'H' if total <= 11
    return 'S'
  end
end
