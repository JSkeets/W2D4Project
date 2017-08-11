require_relative 'my_stack'

class MyQueue

  attr_reader :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def peek
    @queue.last
  end

  def size
    @queue.length
  end

  def empty?
    @queue.empty?
  end

end
