require_relative 'my_stack.rb'

class StackQueue
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

  def size
    @in_stack.size + @out_stack.size
  end

  def empty?
    @in_stack.empty? && @out_stack.empty?
  end

end
