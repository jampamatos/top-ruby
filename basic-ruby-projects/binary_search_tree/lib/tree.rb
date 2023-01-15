# frozen_string_literal: true

require_relative 'node'

class Tree
  attr_accessor :root

  def initialize(arr)
    @root = build_tree(arr)
  end

  def build_tree(arr)
    return nil if arr.empty?

    mid = arr.size / 2
    root = Node.new(arr[mid])
    root.left_child = build_tree(arr[0...mid])
    root.right_child = build_tree(arr[mid + 1..])
    root
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right_child, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right_child
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left_child, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left_child
  end

  def insert(value, node = @root)
    return Node.new(value) unless node

    if value < node.data
      node.left_child = insert(value, node.left_child)
    elsif value > node.data
      node.right_child = insert(value, node.right_child)
    elsif value == node.data
      raise 'Value already exists in the tree'
    end
    node
  end

  def delete(value, nood = @root) end
end

tree = Tree.new([1, 2, 3, 4])
tree.pretty_print
tree.insert(5)
tree.pretty_print
tree.insert(6)
tree.pretty_print
tree.insert(7)
tree.pretty_print
