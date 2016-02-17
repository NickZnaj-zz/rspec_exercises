class Array
  def my_uniq
    result = []
    self.each {|num| result << num unless result.include?(num)}
    result
  end
end
