require_relative 'min_max_stack_queue'

require 'byebug'

def naive_window(arr, window_size)
  i = 0
  current_max = nil
  while i < arr.length - (window_size - 1)
    j = i + window_size
    window = arr[i...j]
    range = window.max - window.min
    # byebug
    current_max = range if current_max.nil? || range > current_max
    i += 1
  end
  current_max
end

def smart_window(arr,window_size)
  mm = MinMaxStackQueue.new
  max_range = nil
  arr.each do |el|
    mm.push(el)
    if mm.size == window_size
      mm.in_stack.max - mm.in_stack.min
    end
  end
end
