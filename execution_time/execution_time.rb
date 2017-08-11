require 'byebug'
class Array

  def my_min_o_n2
    sub_array = []
    self.each do |el1|
      self.each do |el2|
        next if el1 == el2
        sub_array << el2
      end
      return el1 if sub_array.none? { |el| el < el1}
    end
  end

  def my_min_o_n
    min = nil
    self.each do |el|
      min = el if min.nil?
      min = el if el < min
    end
    min
  end

  def sub_arr_o_n2
    max = nil
    self.each_index do |i|
      self.each_index do |j|
        next if i == j || j < i
        max = self[i..j].reduce(:+) if max.nil?
        max = self[i..j].reduce(:+) if max < self[i..j].reduce(:+)
      end
    end
    max
  end

  def sub_arr_o_n
    currmax = self.max
    return currmax if currmax < 0
    sum = 0
    self.each_index do |i|
        sum += self[i]
        currmax = sum if sum > currmax
        sum = 0  if sum < 0
    end
    currmax
  end

end
