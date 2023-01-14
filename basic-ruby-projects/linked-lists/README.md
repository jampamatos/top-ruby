# Linked List

A Ruby implementation of a linked list data structure. Part of [The Odin Project](https://www.theodinproject.com/) Ruby Path.

## Usage

To use the linked list, first require the `linked_list.rb` and `node.rb` files in your project:

```ruby
require_relative 'linked_list'
require_relative 'node'
```

You can then create a new linked list and add nodes to it:

```ruby
list = LinkedList.new
list.append(1)
list.append(2)
list.append(3)
```

You can also prepend nodes to the list:

```ruby
list.prepend(0)
```

You can access the size of the list, the head and tail of the list, and the value at a specific index:

```ruby
puts list.size # 4
puts list.head.value # 0
puts list.tail.value # 3
puts list.at(2).value # 2
```

You can also remove a node at a specific index, pop the last node off the list, check if the list contains a specific value, and find the index of a specific value:

```ruby
list.remove_at(1)
list.pop
puts list.contains?(2) # false
puts list.find(1) # 0
```

## Classes

### LinkedList

`LinkedList` class represents a linked list data structure.
It has a head node which references to the first node in the list, and methods for adding, removing, and finding nodes in the list.

### Node

`Node` class represents a node in the linked list, with a value and a reference to the next node.
