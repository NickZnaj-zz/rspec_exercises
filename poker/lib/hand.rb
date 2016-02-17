require 'deck'

class Hand

  attr_reader :our_cards

  HAND_TYPES = {
    :high_card => 1,
    :pair => 2,
    :two_pair => 3,
    :three_of_a_kind => 4,
    :straight => 5,
    :flush => 6,
    :full_house => 7,
    :four_of_a_kind => 8,
    :straight_flush => 9,
    :royal_flush => 10
  }

  def initialize(deck, value = 0)
    @deck = deck
    @our_cards = deck.deal
    @value = 0
  end

  def our_hand
    #figures out what kind of hand our_cards is
  end

  def self.hand_types
    HAND_TYPES.keys
  end

  def beats?(other_hand)
    our_hand.value > other_hand.value
  end

  def value
    HAND_TYPES[self]
  end

end
