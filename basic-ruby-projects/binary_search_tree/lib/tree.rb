# frozen_string_literal: true

require_relative 'node'

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
end

tree = Tree.new([1, 3, 5, 7, 9, 11, 13, 15, 17])
tree.pretty_print

tree.level_order { |node| puts node.data }
p tree.level_order
