require_relative "node"
require 'pry'


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

  def to_s(total = 0, current = @head)
    if current.nil?
      return total.to_s
    elsif current.next_node.nil?
      total += current.data
      return total.to_s
    else
      total += current.data
      to_s(total, current.next_node)
    end 
  end

end
