require 'deck.rb'


describe Deck do

  subject(:all_cards) { Deck.all_cards }

  describe "#initialize" do

    it "Contains 52 cards" do
      expect(all_cards.count).to eq(52)
    end

    it "Contains 52 unique cards" do
      expect(all_cards.uniq.count).to eq(52) #rework uniq to be based on card attributes no card object_id
    end

  end

  describe "#shuffle" do

    it "Randomizes the order of the cards" do
      expect(all_cards.shuffle).not_to eq(all_cards)
    end

  end

  describe "#deal" do
    let(:deck) { Deck.new }

    let (:player) { double "player" }

    it "Deals five cards from the all_cards" do
      expect(deck.cards.count - deck.deal.count).to eq(47)
    end

    it "Moves card from all_cards to player's hand" do
      expect(all_cards).not_to include(player.hand.sample)  #have to make hand for player
    end

  end

  describe "#replace" do
    let(:deck) { Deck.new }

    it "refuses to give more than three" do
      expect {deck.replace(4)}.to raise_error(ArgumentError)
    end

    it "gives the correct number" do
      expect(deck.replace(3).length).to eq(3)
    end

  end
end




















#jflashfa;l
