require "card"

class Deck
  attr_reader :cards

  def self.all_cards
    cards = []
    Card.suits.each do |suit|
      Card.values.each do |value|
        cards << Card.new(value, suit)
      end
    end
    cards
  end


  def initialize(cards = self.class.all_cards)
    @cards = cards
  end

  def deal
    cards.shift(5) # send to player hand

  end

  def replace(n)
    raise ArgumentError if n > 3 || n < 0
    cards.shift(n)
  end

end

# class PokerDeck < Deck
#
#   def self.all_cards
#     []
#   end
#
# end
#
# pd = PokerDeck.new
