# frozen_string_literal: true

# The Node class represents a node in a linked list.
# It has a value and a reference to the next node in the list.
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
