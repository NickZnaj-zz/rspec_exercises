require "exercises.rb"

describe "#my_uniq" do
  it "removes duplicates" do
    expect([1,6,2,6,3,3].my_uniq).to match_array([1, 2, 3, 6])
  end

  it "returns an empty array when given an empty array" do
    expect([].my_uniq).to eq([])
  end

end

describe "#two_sum" do

  # let (:array) {[-1, 0, 2, -2, 1]}

  it "returns an array" do
    expect([-1, 0, 2, -2, 1].two_sum).to be_is_a(Array)
  end

  it "returns empty array if given an empty array" do
    expect([].two_sum).to eq([])
  end

  it "returns empty array if given array with no zero-sums" do
    expect([1,2,3,4].two_sum).to eq([])
  end

  it "returns one duple if given array with one zero sum" do
    expect([-1, 0, 1].two_sum).to eq([[0, 2]])
  end

  it "returns all duples if given array with multiple zero sums" do
    expect([-1, 0, 2, -2, 1].two_sum).to match_array([[0, 4], [2, 3]])
  end

  #[0, 2] before [2, 1] (smaller first elements come first)
  #[0, 1] before [0, 2] (then smaller second elements come first)
  it "returns all duples in correct order" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end

  it "adds duples that sum to zero with the same numbers" do
    expect([1, -1, -1].two_sum).to eq([[0, 1], [0, 2]])
  end
end

describe "#my_transpose" do

  let (:matrix) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}

  # it "keeps all the elements of the original arrays" do
  #   expect(:matrix.my_transpose.count(nil)).to eq(:matrix.flatten.count(nil))
  #   expect(:matrix.my_transpose.flatten.compact).to match_array(:matrix.flatten)
  # end

  it "" do

  end

  describe "returns an array with the same #count as the original" do

    it "when passed [[]] returns [[[]]]" do
      expect([[]].my_transpose.count).to eq(1)
    end

    # it "when passed a flattened array of n elements returns an array with n subarrays " do
    #   expect([1,2,3].my_transpose.count).to eq(3)
    # end

    it "when passed a matrix of n arrays returns a matrix with as many subarrays as the original matrix's first subarray has elements" do
    expect(matrix.my_transpose.count).to eq(matrix.first.count)
    end
  end

  it "being passed an empty array returns an empty array" do
    expect([].my_transpose).to eq([])
  end


  it "returns the correct transposition" do
    expect([[0, 1, 2],[3, 4, 5],[6, 7, 8]].my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
  end
end

describe "#stockpicker" do

  it "ensures array includes at least 2 days" do
    expect(stockpicker{[]}).to raise_error
    # expect(stockpicker{[55, 88]}).to_not raise_error
  end

  it "returns an empty array if price only goes down" do
    expect(stockpicker([3,2,1])).to eq([])
  end

  it "it returns most profitable indices" do
    expect(stockpicker([3, 5, 1000]).to eq([0, 2])
  end
end
























#space
