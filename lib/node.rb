class Node

  attr_reader :next_node, :data

  def initialize(data, next_node = nil)
    @data = data
    @next_node = nil
  end

  def next_node=(new_node)
    @next_node = new_node
  end


end
