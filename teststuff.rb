class Card 
  SUITS = %w{ clubs diamonds hearts spades } 
  RANKS=%w{2345678910JQKA}
  class Deck 
    attr_reader :cards
    def initialize(n=1) 
      @cards = [] SUITS.cycle(n) do |s|
        RANKS.cycle(1) do |r| @cards << "#{r} of #{s}"
        end
      end
    end 
  end
end
