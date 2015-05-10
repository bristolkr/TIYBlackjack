# #card.rb (Card class) (use arrays)
#     - use to designate each of the 52 cards 
#     - must use suits (13 cards per suit)
#     - must use face cards 

class Card

  attr_accessor :number, :suit, :value

  def initialize(number, suit, value)
    @number = number
    @suit = suit
    @value = value
  end

  def to_s
    "#{@number} of #{suit}"
  end
end
