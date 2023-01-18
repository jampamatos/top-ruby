# frozen_string_literal: true

require 'set'

require_relative 'lib/node'
require_relative 'lib/tree'

puts 'Starting driver script...'
puts 'Creating an array of 15 random numbers...'
arr = (1..100).to_a.sample(15)
p arr
puts ''
puts 'Generating a binary search tree from array...'
tree = Tree.new(arr)
tree.pretty_print
puts ''
puts 'Confirming tree is balanced by calling #balanced? method:'
puts "tree.balanced? : #{tree.balanced?}"
puts ''
puts 'Printing elements in level order:'
tree.level_order { |node| print "#{node.data} -> " }
puts ''
puts 'Printing elements in preorder:'
tree.preorder { |node| print "#{node.data} -> " }
puts ''
puts 'Printing elements in postorder:'
tree.postorder { |node| print "#{node.data} -> " }
puts ''
puts 'Printing elements in inorder'
tree.inorder { |node| print "#{node.data} -> " }
puts ''
puts ''
puts 'Adding 10 random numbers > 100 to tree...'
puts ''
numbers = Set.new
while numbers.size < 10
  number = rand(101..200)
  tree.insert(number)
  numbers << number
end
tree.pretty_print
puts ''
puts 'Confrim tree is unbalanced by calling #balanced? method:'
puts "tree.balanced? : #{tree.balanced?}"
puts ''
puts 'Rebalancing tree by calling #rebalance on it...'
tree.rebalance
puts ''
tree.pretty_print
puts ''
puts 'Confirming tree was rebalanced by calling #balanced? method:'
puts "tree.balanced? : #{tree.balanced?}"
puts ''
puts 'Printing elements in level order:'
tree.level_order { |node| print "#{node.data} -> " }
puts ''
puts 'Printing elements in preorder:'
tree.preorder { |node| print "#{node.data} -> " }
puts ''
puts 'Printing elements in postorder:'
tree.postorder { |node| print "#{node.data} -> " }
puts ''
puts 'Printing elements in inorder'
tree.inorder { |node| print "#{node.data} -> " }
puts ''
puts ''
puts 'Driver script completed.'
