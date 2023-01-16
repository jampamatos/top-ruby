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
    if node.nil?
      @root = Node.new(value)
      return
    end

    if value < node.data
      if node.left_child.nil?
        node.left_child = Node.new(value)
      else
        insert(value, node.left_child)
      end
    elsif value > node.data
      if node.right_child.nil?
        node.right_child = Node.new(value)
      else
        insert(value, node.right_child)
      end
    else
      raise 'Value already exists in the tree'
    end
  end

  def delete(value, node = @root)
    return nil if node.nil?

    if value < node.data
      node.left_child = delete(value, node.left_child)
    elsif value > node.data
      node.right_child = delete(value, node.right_child)
    else
      if node.left_child.nil?
        temp = node.right_child
        node = nil
        return temp
      elsif node.right_child.nil?
        temp = node.left_child
        node = nil
        return temp
      end
      temp = find_min(node.right_child)
      node.data = temp.data
      node.right_child = delete(temp.data, node.right_child)
    end
    @root = temp if node == @root && node.data == value

    node
  end

  def find_min(node)
    current_node = node
    while (current_node.left_child) do
      current_node = current_node.left_child
    end
    current_node
  end

  def level_order
    queue = [@root]
    values = []

    until queue.empty?
      node = queue.shift
      yield node.data if block_given?

      queue << node.left_child if node.left_child
      queue << node.right_child if node.right_child
      values << node.data
    end
    block_given? ? nil : values
  end

  def inorder(node = @root, values = [], &block)
    inorder(node.left_child, values, &block) if node.left_child
    block_given? ? block.call(node.data) : values << node.data
    inorder(node.right_child, values, &block) if node.right_child
    return values unless block_given?
  end

  def preorder(node = @root, values = [], &block)
    block_given? ? block.call(node.data) : values << node.data
    preorder(node.left_child, values, &block) if node.left_child
    preorder(node.right_child, values, &block) if node.right_child
    return values unless block_given?
  end

  def postorder(node = @root, values = [], &block)
    postorder(node.left_child, values, &block) if node.left_child
    postorder(node.right_child, values, &block) if node.right_child
    block_given? ? block.call(node.data) : values << node.data
    return values unless block_given?
  end

  def height(node = @root)
    return 1 unless node.left_child && node.right_child

    left_height = height(node.left_child)
    right_height = height(node.right_child)
    [left_height, right_height].max + 1
  end

  def depth(value, node = @root, edges = 0)
    return 0 unless node

    return edges if node.data == value

    left_depth = depth(value, node.left_child, edges + 1)
    right_depth = depth(value, node.right_child, edges + 1)
    [left_depth, right_depth].max
  end
end

tree = Tree.new([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
tree.pretty_print

#tree.inorder { |node_data| puts node_data }
#p tree.inorder
#tree.preorder { |node_data| puts node_data }
#p tree.preorder
#tree.postorder { |node_data| puts node_data }
#p tree.postorder
#p tree.height
puts tree.depth(4)
