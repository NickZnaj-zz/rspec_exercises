require "card"


describe Card do

  subject(:card) { Card.new(:King, :Hearts) }

  it "Has a value" do
    expect(card.value).to eq(:King)
  end

  it "Has a suit" do
    expect(card.suit).to eq(:Hearts)
  end

  # it "" do
  #
  # end

end
