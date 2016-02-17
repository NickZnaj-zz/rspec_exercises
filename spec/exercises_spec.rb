require "exercises.rb"

describe "#my_uniq" do
  it "removes duplicates" do
    expect([1,6,2,6,3,3].my_uniq).to match_array([1, 2, 3, 6])
  end

  it "returns an empty array when given an empty array" do
    expect([].my_uniq).to eq([])
  end

end
