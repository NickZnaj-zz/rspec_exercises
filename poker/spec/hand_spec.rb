require "hand"


describe Hand do

  subject(:hand) { Hand.new(Deck.new) }

  it "Never has more than five cards" do
    expect(hand.our_cards.count).to be <= 5
  end

  describe "hands" do

    subject(:two_of_a_kind) { Hand.new }

    context "our hand is full house" do

      let (:our_hand) { Hand.new }

      it "beats a pair" do

      end

    end

    # it "flush beats straight" do
    #
    # end
    #
    # it "royal flush beats flush" do
    #
    # end

  end


end
