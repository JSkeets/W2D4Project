require_relative 'my_queue'

class MyStack

  attr_reader :stack, :max, :min

  def initialize
    @stack = []
    @max = nil
    @min = nil
  end

  def pop
    @stack.pop
  end

  def push(el)
    @stack.push(el)
    @max = el if max.nil?
    @max = el if el > @max
    @min = el if min.nil?
    @min = el if el < @min
  end

  def peek
    @stack.last
  end

  def size
    @stack.length
  end

  def empty?
    @stack.empty?
  end

end
