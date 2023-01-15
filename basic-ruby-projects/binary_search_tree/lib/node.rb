# frozen_string_literal: true

# The Node class represents a node in a binary search tree.
# It has a data attribute to store the value of the node,
# and left_child and right_child attributes to store the left and right children of the node.
# The class also includes the Comparable module, which allows nodes to be compared based on their data attribute.
class Node
  include Comparable
  attr_accessor :data, :left_child, :right_child

  def initialize(data)
    @data = data
    @left_child = nil
    @right_child = nil
  end

  def <=>(other)
    data <=> other.data
  end
end
