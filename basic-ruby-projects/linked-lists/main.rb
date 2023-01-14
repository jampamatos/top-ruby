# frozen_string_literal: true

require_relative 'lib/linked_list'
require_relative 'lib/node'

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

puts list5.head
puts list5.tail