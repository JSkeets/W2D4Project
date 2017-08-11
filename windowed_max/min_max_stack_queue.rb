require_relative 'my_stack'

class MinMaxStackQueue

  attr_accessor :in_stack, :out_stack

  def initialize
    @in_stack = MyStack.new
    @out_stack = MyStack.new
  end

  def enqueue(el)
    @in_stack.push(el)
  end

  def dequeue
    return nil if empty?
    if @out_stack.empty?
      @out_stack.push(@in_stack.pop) until @in_stack.empty?
      dequeue
    else
      @out_stack.pop
    end
  end

  def max
    @in_stack.max > @out_stack.max ? @in_stack.max : @out_stack.max
  end

  def min
    @in_stack.min > @out_stack.min ? @in_stack.min : @out_stack.min
  end

  def size
    @in_stack.size + @out_stack.size
  end

  def empty?
    @in_stack.empty? && @out_stack.empty?
  end

end
