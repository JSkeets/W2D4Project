def bad_two_sum?(arr,target_sum)
  arr.each_with_index do |el1,i|
    arr.each_with_index do |el2,j|
      next if i == j || j < i
      return true if el1 + el2 == target_sum
    end
  end
  false
end

def okay_two_sum?(arr,target_sum)
  sorted = arr.sort
  sorted.each_with_index do |el,idx|
    search_array = sorted[0...idx] + sorted[idx+1..-1]
    return true if b_search(search_array,target_sum - el)
  end
  false
end

def b_search(arr,el)
  return false if el > arr.last || el < arr.first
  mid_id = arr.length/2
  return true if arr[mid_id] == el
  return b_search(arr[0...mid_id],el) if el < arr[mid_id]
  return b_search(arr[mid_id + 1..-1 ],el) if  el > arr[mid_id]
  false
end

def best_two_sum?(arr,target_sum)
  sumhash = Hash.new(0)
  arr.each do |el|
    return true if sumhash[target_sum-el] > 0
    sumhash[el] += 1
  end
  false 
end
