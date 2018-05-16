require_relative "node"

class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data, current = @head)
    if @head.nil?
      @head = Node.new(data)
    elsif current.next_node.nil?
      current.next_node = Node.new(data)
    else
      append(data, current.next_node)
    end
  end

  def count
    @head.nil? ? counter = 0 : counter = 1
    current = @head
    until current.next_node.nil?
      current = current.next_node
      counter += 1
    end
    counter
  end

end
