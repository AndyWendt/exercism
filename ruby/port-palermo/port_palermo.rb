module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    {
      "Hamburg" => :HAMB,
      "Rome" => :ROME,
      "Kiel" => :KIEL,
    }.fetch(city)
  end

  def self.get_terminal(ship_identifier)
    id = ship_identifier.to_s.slice(0,3)
    return :A if ["OIL", "GAS"].include?(id.upcase)
    :B
  end
end
