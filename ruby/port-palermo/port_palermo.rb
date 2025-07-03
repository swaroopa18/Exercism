module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city.slice(0, 4).upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    first_three_letters = ship_identifier.to_s[0,3].upcase
    if(first_three_letters == 'OIL' or first_three_letters == 'GAS')
      :A
    else
      :B
    end
  end
end
