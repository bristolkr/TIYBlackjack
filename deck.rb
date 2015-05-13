require_relative 'cards'

 class Deck

  attr_accessor :deck_cards, :public_deck

  def initialize
    deck_cards = []
    @public_deck = nil

    # Spades
    deck_cards << Card.new("A", "Spades", 11)
    deck_cards << Card.new("2", "Spades", 2)
    deck_cards << Card.new("3", "Spades", 3)
    deck_cards << Card.new("4", "Spades", 4)
    deck_cards << Card.new("5", "Spades", 5)
    deck_cards << Card.new("6", "Spades", 6)
    deck_cards << Card.new("7", "Spades", 7)
    deck_cards << Card.new("8", "Spades", 8)
    deck_cards << Card.new("9", "Spades", 9)
    deck_cards << Card.new("10", "Spades", 10)
    deck_cards << Card.new("J", "Spades", 10)
    deck_cards << Card.new("Q", "Spades", 10)
    deck_cards << Card.new("K", "Spades", 10)

    # Hearts
    deck_cards << Card.new("A", "Hearts", 11)
    deck_cards << Card.new("2", "Hearts", 2)
    deck_cards << Card.new("3", "Hearts", 3)
    deck_cards << Card.new("4", "Hearts", 4)
    deck_cards << Card.new("5", "Hearts", 5)
    deck_cards << Card.new("6", "Hearts", 6)
    deck_cards << Card.new("7", "Hearts", 7)
    deck_cards << Card.new("8", "Hearts", 8)
    deck_cards << Card.new("9", "Hearts", 9)
    deck_cards << Card.new("10", "Hearts", 10)
    deck_cards << Card.new("J", "Hearts", 10)
    deck_cards << Card.new("Q", "Hearts", 10)
    deck_cards << Card.new("K", "Hearts", 10)
     
    # Diamonds
    deck_cards << Card.new("A", "Diamonds", 11)
    deck_cards << Card.new("2", "Diamonds", 2)
    deck_cards << Card.new("3", "Diamonds", 3)
    deck_cards << Card.new("4", "Diamonds", 4)
    deck_cards << Card.new("5", "Diamonds", 5)
    deck_cards << Card.new("6", "Diamonds", 6)
    deck_cards << Card.new("7", "Diamonds", 7)
    deck_cards << Card.new("8", "Diamonds", 8)
    deck_cards << Card.new("9", "Diamonds", 9)
    deck_cards << Card.new("10", "Diamonds", 10)
    deck_cards << Card.new("J", "Diamonds", 10)
    deck_cards << Card.new("Q", "Diamonds", 10)
    deck_cards << Card.new("K", "Diamonds", 10)
     
    # Clubs
    deck_cards << Card.new("A", "Clubs", 11)
    deck_cards << Card.new("2", "Clubs", 2)
    deck_cards << Card.new("3", "Clubs", 3)
    deck_cards << Card.new("4", "Clubs", 4)
    deck_cards << Card.new("5", "Clubs", 5)
    deck_cards << Card.new("6", "Clubs", 6)
    deck_cards << Card.new("7", "Clubs", 7)
    deck_cards << Card.new("8", "Clubs", 8)
    deck_cards << Card.new("9", "Clubs", 9)
    deck_cards << Card.new("10", "Clubs", 10)
    deck_cards << Card.new("J", "Clubs", 10)
    deck_cards << Card.new("Q", "Clubs", 10)
    deck_cards << Card.new("K", "Clubs", 10)

    deck_cards.shuffle!

    @public_deck = deck_cards

    def draw
      @public_deck.shift
    end
  
  end
end
