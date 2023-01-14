# frozen_string_literal: true

# The LinkedList class represents a linked list data structure.
# It has a head node which references to the first node in the list, and
# methods for adding, removing, and finding nodes in the list.
class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  def traverse
    curr_node = head
    while curr_node
      yield curr_node
      curr_node = curr_node.next_node
    end
  end

  def append(value)
    if head.nil?
      node = Node.new(value)
      @head = node
    else
      raise 'Invalid argument: value is nil' if value.nil?

      node = Node.new(value)
      curr_node = @head
      curr_node = curr_node.next_node until curr_node.next_node.nil?
      curr_node.next_node = node
    end
  end

  def prepend(value)
    if head.nil?
      node = Node.new(value)
    else
      raise 'Invalid argument: value is nil' if value.nil?

      node = Node.new(value)
      node.next_node = head
    end
    @head = node
  end

  def size
    size = 0
    traverse { size += 1 }
    size
  end

  def tail
    curr_node = @head
    curr_node = curr_node.next_node until curr_node.next_node.nil?
    curr_node
  end

  def at(index)
    node_index = 0
    traverse do |node|
      return node if node_index == index

      node_index += 1
    end
    raise IndexError, 'OutOfBounds: Index is out of range'
  end

  def pop
    return nil if head.nil?

    prev_node = nil
    curr_node = nil

    traverse do |node|
      prev_node = curr_node
      curr_node = node
    end
    prev_node.next_node = nil if prev_node
    curr_node
  end

  def contains?(value)
    traverse do |node|
      return true if node.value == value
    end
    false
  end

  def find(value)
    index = 0
    traverse do |node|
      return index if node.value == value

      index += 1
    end
    nil
  end

  def to_s
    return_string = ''
    traverse do |node|
      return_string += "(#{node.value}) -> "
    end
    return_string.chop.chop
    return_string += 'nil'
    return_string
  end

  def insert_at(value, index)
    raise 'Error' if index >= size

    curr_index = 0
    prev_node = nil
    curr_node = head

    while curr_node
      if curr_index == index
        node = Node.new(value)
        node.next_node = curr_node
        prev_node.next_node = node if prev_node
        @head = node if index.zero?
        break
      end
      curr_index += 1
      prev_node = curr_node
      curr_node = curr_node.next_node
    end
    node
  end

  def remove_at!(index)
    raise 'Error' if index >= size

    curr_index = 0
    prev_node = nil
    curr_node = head

    while curr_node
      if curr_index == index
        prev_node.next_node = curr_node.next_node if prev_node
        @head = curr_node.next_node if index.zero?
        break
      end
      curr_index += 1
      prev_node = curr_node
      curr_node = curr_node.next_node
    end
  end

  def remove_at(index)
    raise 'Error' if index >= size

    new_list = dup
    new_list.remove_at!(index)
    new_list
  end
end

# The Node class represents a node in a linked list.
# It has a value and a reference to the next node in the list.
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

puts 'Testind #append:'
list = LinkedList.new
puts list
list.append(10)
puts list
list.append(20)
puts list
list.append(30)
puts list

puts '---'

puts 'Testing #prepend'
list2 = LinkedList.new
puts list2
list2.prepend(10)
puts list2
list2.prepend(20)
puts list2
list2.prepend(30)
puts list2

puts '---'

puts 'Testing #pop'
list3 = LinkedList.new
list3.append(10)
list3.append(20)
list3.append(30)
puts list3
puts 'Pop the last node from the list'
popped_node = list3.pop
puts popped_node.value
puts list3

puts '---'

puts 'Testing #size'
list4 = LinkedList.new
list4.append(10)
list4.append(20)
list4.append(30)
puts list4
puts list4.size

puts '---'

puts 'Testing #find'
list5 = LinkedList.new
list5.append(10)
list5.append(20)
list5.append(30)
puts list5
puts list5.find(20)
p list5.find(50)