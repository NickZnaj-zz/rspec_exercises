class Array
  def my_uniq
    result = []
    self.each {|num| result << num unless result.include?(num)}
    result
  end

  def two_sum
    result = []
    idx1 = 0

    while idx1 < self.count
      idx2 = idx1 + 1
        while idx2 < self.count
          result << [idx1, idx2] if self[idx1] + self[idx2] == 0
          idx2 += 1
        end
      idx1 += 1
    end
    result
  end

  def my_transpose
    result = Array.new(self.length) {[]}
    each do |subarray|
      subarray.each_with_index do |el, idx|
        result[idx] << el
      end
    end
    result
  end
end
