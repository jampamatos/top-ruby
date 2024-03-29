# frozen_string_literal: true

require_relative 'node'

# The Tree class is a binary search tree data structure implemented in Ruby.
# Initializes a new instance of the Tree class with a given array of data.
# Sorts the array and builds a balanced binary search tree from the sorted data.
#
# @param arr [Array<Integer>] an array of integers to create the tree with
class Tree
  attr_accessor :root

  def initialize(arr)
    @root = build_tree(arr.sort)
  end

  def build_tree(arr)
    return nil if arr.empty?

    mid = arr.size / 2
    root = Node.new(arr[mid])
    root.left_child = build_tree(arr[0...mid])
    root.right_child = build_tree(arr[mid + 1..-1])
    root
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right_child, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right_child
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left_child, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left_child
  end

  def include?(data, node = @root)
    return false if node.nil?
    return true if node.data == data

    left = include?(data, node.left_child) if data < node.data
    return left if left

    right = include?(data, node.right_child) if data > node.data
    return right if right

    false
  end

  def find_leftmost_node(node = @root)
    current = node

    current = current.left_child while current.left_child

    current
  end

  def insert(data, node = @root)
    return Node.new(data) if node.nil?

    return node if node.data == data

    node.left_child = insert(data, node.left_child) if data < node.data
    node.right_child = insert(data, node.right_child) if data > node.data
    node
  end

  def delete(data, node = @root)
    return nil unless node

    if data < node.data
      node.left_child = delete(data, node.left_child)
    elsif data > node.data
      node.right_child = delete(data, node.right_child)
    else
      return node.right_child if node.left_child.nil?
      return node.left_child if node.right_child.nil?

      replacement_node = find_leftmost_node(node.right_child)
      node.data = replacement_node.data
      node.right_child = delete(replacement_node.data, node.right_child)
    end
    node
  end

  def find(data, node = @root)
    return nil unless node

    return node if node.data == data

    left = find(data, node.left_child) if data < node.data
    return left if left

    right = find(data, node.right_child) if data > node.data
    return right if right

    nil
  end

  def level_order(node = @root)
    queue = [node]
    values = [] unless block_given?

    until queue.empty?
      next_node = queue.shift
      if block_given?
        yield next_node
      else
        values << next_node.data
      end
      queue << next_node.left_child if next_node.left_child
      queue << next_node.right_child if next_node.right_child
    end
    values unless block_given?
  end

  def inorder(node = @root, values = [], &block)
    return nil unless node

    inorder(node.left_child, values, &block) if node.left_child

    if block_given?
      block.call(node)
    else
      values << node.data
    end

    inorder(node.right_child, values, &block) if node.right_child

    block_given? ? nil : values
  end

  def preorder(node = @root, values =[], &block)
    return nil unless node

    if block_given?
      block.call(node)
    else
      values << node.data
    end

    preorder(node.left_child, values, &block) if node.left_child
    preorder(node.right_child, values, &block) if node.right_child

    block_given? ? nil : values
  end

  def postorder(node = @root, values =[], &block)
    return nil unless node

    postorder(node.left_child, values, &block) if node.left_child
    postorder(node.right_child, values, &block) if node.right_child

    if block_given?
      block.call(node)
    else
      values << node.data
    end

    block_given? ? nil : values
  end

  def height(node = @root)
    # The base case is set to return -1 if the node is nil, this allows for the height of leaf nodes to be 0.
    return -1 unless node

    # The recursive call to calculate the height of the left and right children
    # are added to the max of the two and 1 is added to that value to account for the current node.
    left_height = height(node.left_child)
    right_height = height(node.right_child)
    [left_height, right_height].max + 1
  end

  def depth(node = @root)
    return -1 if node.nil?

    current_node = @root
    current_depth = 0

    until current_node == node
      current_depth += 1
      current_node = current_node.left_child if node.data < current_node.data
      current_node = current_node.right_child if node.data > current_node.data
    end

    current_depth
  end

  def balanced?(node = @root)
    return true if node.nil?

    left_height = height(node.left_child)
    right_height = height(node.right_child)
    (left_height - right_height).abs <= 1 && balanced?(node.left_child) && balanced?(node.right_child)
  end

  def rebalance
    return if balanced?

    # Collect all the data in the tree using an in-order traversal
    data = []
    inorder { |node| data << node.data }

    # Rebuild the tree using the sorted data
    @root = build_tree(data.sort)
  end
end
