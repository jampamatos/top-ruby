# [Project: Binary Search Trees](#project-binary-search-trees)

- [Project: Binary Search Trees](#project-binary-search-trees)
  - [Introduction](#introduction)
    - [Advantages of using a BST include](#advantages-of-using-a-bst-include)
    - [Disadvantages of using a BST include](#disadvantages-of-using-a-bst-include)
  - [Node Class](#node-class)
    - [Node Class Usage](#node-class-usage)
    - [Comparable Module](#comparable-module)
  - [Tree Class](#tree-class)
    - [Tree Class Usage](#tree-class-usage)
    - [Class Methods](#class-methods)
      - [`initialize(arr)`](#initializearr)
      - [`build_tree(arr)`](#build_treearr)
      - [`pretty_print(node = @root, prefix = '', is_left = true)`](#pretty_printnode--root-prefix---is_left--true)
      - [`include?(data, node = @root)`](#includedata-node--root)
      - [`find_leftmost_node(node = @root)`](#find_leftmost_nodenode--root)
      - [`insert(data, node = @root)`](#insertdata-node--root)
      - [`delete(data, node = @root)`](#deletedata-node--root)
      - [`find(data, node = @root)`](#finddata-node--root)
      - [`level_order(node = @root)`](#level_ordernode--root)
      - [`inorder(node = @root, values = [], &block)`](#inordernode--root-values---block)
      - [`preorder(node = @root, values =[], &block)`](#preordernode--root-values--block)
      - [`postorder(node = @root, values =[], &block)`](#postordernode--root-values--block)
      - [`height(node = @root)`](#heightnode--root)
      - [`depth(node = @root)`](#depthnode--root)
      - [`balanced?(node = @root)`](#balancednode--root)
      - [`rebalance`](#rebalance)
  - [Testing](#testing)
  - [Demos](#demos)
    - [Building a Tree](#building-a-tree)
    - [Checking if a Value is Included in the Tree](#checking-if-a-value-is-included-in-the-tree)
    - [Inserting a Value into the Tree](#inserting-a-value-into-the-tree)
    - [Deleting a Value from the Tree](#deleting-a-value-from-the-tree)
    - [Traversing the Tree](#traversing-the-tree)
    - [Rebalancing the Tree](#rebalancing-the-tree)
    - [Pretty Print](#pretty-print)

This project is an implementation of a balanced [BST](https://en.wikipedia.org/wiki/Binary_search_tree) in Ruby, part of the [Ruby path](https://www.theodinproject.com/lessons/ruby-binary-search-trees) in [The Odin Project](https://www.theodinproject.com/).

## Introduction

A binary search tree (BST) is a type of data structure that stores elements in a hierarchical, ordered manner. Each element, called a node, has a value and two child nodes, a left and a right. The left child node holds a value that is less than its parent node, and the right child node holds a value that is greater than its parent node. This ordering allows for efficient searching, insertion, and deletion of elements in the tree.

### Advantages of using a BST include

- Fast **search, insertion, and deletion** times. On average, these operations take O(log n) time, where n is the number of elements in the tree.
- The tree structure allows for **easy visual representation** of the data.
- The ordering of the elements allows for efficient **inorder, preorder, and postorder** traversals.

### Disadvantages of using a BST include

- If the tree becomes unbalanced, the performance of the operations may degrade to O(n) time.
- The tree structure does not lend itself well to certain types of data, such as those with many duplicate values.
- The tree structure can be more complex to implement and maintain than other data structures such as arrays or linked lists.

## Node Class

The `Node` class represents a node in a binary search tree. Each node contains a data attribute to store the value of the `node`, and l`eft_child` and `right_child` attributes to store the left and right children of the node. The class also includes the `Comparable` module, which allows nodes to be compared based on their data attribute.

This class is used in conjunction with the `Tree` class to build and maintain a binary search tree data structure.

### Node Class Usage

To create a new node, simply instantiate a new object and pass in the desired data:

```ruby
node = Node.new(5)
```

You can then access and modify the node's data, left child, and right child using the `data`, `left_child`, and `right_child` attributes:

```ruby
node.data = 10
node.left_child = Node.new(3)
node.right_child = Node.new(7)
```

### Comparable Module

The `Node` class includes the `Comparable` module, which allows nodes to be compared based on their data attribute. This allows for easy sorting and searching of nodes within the binary search tree.

## Tree Class

The Tree class is a representation of a binary search tree. It is initialized with an array of data, which is then used to build the tree by sorting the array and creating a new Node for each element, with the middle element becoming the root node. The class includes methods for inserting, deleting, and searching for elements in the tree, as well as methods for traversing the tree in different orders, such as inorder, preorder, and level order. Additionally, the class has a method to check whether the tree is balanced, and another to rebalance it if it is not.

This class is used in conjunction with the `Node`class to create a complete Binary Search Tree data structure.

### Tree Class Usage

To create a new tree, initialize a new instance of the Tree class and pass in an array of values. The class will automatically sort the array and build the tree:

```ruby
tree = Tree.new([8, 4, 12, 2, 6, 10, 14])
```

To check if a value is included in the tree, use the `include?` method and pass in the value:

```ruby
tree.include?(6) # returns true
```

To insert a new value into the tree, use the `insert` method and pass in the value:

```ruby
tree.insert(5)
```

To delete a value from the tree, use the `delete` method and pass in the value:

```ruby
tree.delete(12)
```

Other methods are described in the Class Methods below.

It is important to note that this implementation does not guarantee a balanced tree and may not handle large data sets efficiently. Future improvements could include implementing AVL rotations to keep the tree balanced.

### Class Methods

#### `initialize(arr)`

Takes in an array of integers and sorts it, then uses the middle value as the root of the tree. The left and right subtrees are then built recursively by calling `build_tree` on the left and right halves of the original array, respectively.

#### `build_tree(arr)`

A helper method that takes in an array of integers, finds the middle value and uses it as the root of the subtree. It then recursively calls `build_tree` on the left and right halves of the array to build the left and right subtrees, respectively.

#### `pretty_print(node = @root, prefix = '', is_left = true)`

A helper method that takes in a node and recursively prints out the tree in a pretty format.

#### `include?(data, node = @root)`

Takes in a value and checks if it is present in the tree. Returns true if it is, false otherwise.

#### `find_leftmost_node(node = @root)`

Finds the leftmost node in the tree.

#### `insert(data, node = @root)`

Inserts a new value into the tree.

#### `delete(data, node = @root)`

Removes a value from the tree.

#### `find(data, node = @root)`

Takes in a value and returns the node containing it, if it exists in the tree.

#### `level_order(node = @root)`

Returns an array of the tree's values in level-order.

#### `inorder(node = @root, values = [], &block)`

Returns an array of the tree's values in in-order.

#### `preorder(node = @root, values =[], &block)`

Returns an array of the tree's values in pre-order.

#### `postorder(node = @root, values =[], &block)`

Returns an array of the tree's values in post-order.

#### `height(node = @root)`

Returns the height of the tree.

#### `depth(node = @root)`

Returns the depth of the tree.

#### `balanced?(node = @root)`

Checks if the tree is balanced.

#### `rebalance`

The rebalance method is used to ensure that the tree is balanced. The tree is considered balanced if the difference in height between the left and right subtrees of a node is at most 1. The method first checks if the current tree is already balanced by calling the balanced? method. If the tree is not balanced, the method creates an array of data by traversing the tree in-order and storing each node's data in the array. The array is then sorted and passed to the build_tree method to create a new, balanced tree. The rebalance method then returns the new, balanced tree.

## Testing

In order to test the functionality of the `Tree` and `Node` classes, a set of test cases can be written using a testing framework such as [RSpec](https://rspec.info/). These tests can include verifying that the tree is properly built and balanced, as well as testing the various class methods such as `insert`, `delete`, and `include?`.

```ruby
describe 'Tree' do
  let(:tree) { Tree.new([8, 4, 12, 2, 6, 10, 14]) }
  
  describe '#build_tree' do
    it 'builds a balanced binary search tree' do
      expect(tree.root.data).to eq(8)
      expect(tree.root.left_child.data).to eq(4)
      expect(tree.root.right_child.data).to eq(12)
    end
  end

  describe '#insert' do
    it 'inserts a new value into the tree' do
      tree.insert(5)
      expect(tree.include?(5)).to be true
    end
  end

  describe '#delete' do
    it 'deletes a value from the tree' do
      tree.delete(12)
      expect(tree.include?(12)).to be false
    end
  end
  
  describe '#include?' do
    it 'returns true if the value is in the tree' do
      expect(tree.include?(6)).to be true
    end
    it 'returns false if the value is not in the tree' do
      expect(tree.include?(11)).to be false
    end
  end
end
```

## Demos

The `Tree` class can be demonstrated with a simple command line program that allows a user to insert, delete, and search for values in the tree. The program can also display the tree in a pretty printed format using the `pretty_print` method.

Here are a few examples of how to use the Tree class to build and manipulate a binary search tree.

### Building a Tree

To create a new tree, initialize a new instance of the `Tree` class and pass in an array of values. The class will automatically sort the array and build the tree:

```ruby
tree = Tree.new([8, 4, 12, 2, 6, 10, 14])
```

### Checking if a Value is Included in the Tree

To check if a value is included in the tree, use the `include?` method and pass in the value:

```ruby
tree.include?(6) # returns true
```

### Inserting a Value into the Tree

To insert a new value into the tree, use the `insert` method and pass in the value:

```ruby
tree.insert(5)
```

### Deleting a Value from the Tree

To delete a value from the tree, use the `delete` method and pass in the value:

```ruyb
tree.delete(12)
```

### Traversing the Tree

To traverse the tree in different orders, such as inorder, preorder, and level order, the `inorder`, `preorder`, and `level_order` methods can be used respectively:

```ruby
tree.inorder { |node| p node.data }
tree.preorder { |node| p node.data }
tree.level_order { |node| p node.data }7
```

### Rebalancing the Tree

To check if the tree is balanced, the `balanced?` method can be used, which returns true if the tree is balanced and false if it is not:

```ruby
tree.balanced?
```

If the tree is not balanced, it can be rebalanced using the `rebalance` method:

```ruby
tree.rebalance
```

### Pretty Print

The `pretty_print` method can be used to display the tree in a visually pleasing format. This method is called on an instance of the `Tree` class, and takes two optional parameters: a `node` to start the print from (defaults to the root of the tree), and a `prefix` to indicate the level of the node in the tree (defaults to an empty string).

```ruby
tree = Tree.new([8, 4, 12, 2, 6, 10, 14])
puts "Original Tree:"
tree.pretty_print

tree.insert(5)
puts "Tree after inserting 5:"
tree.pretty_print
```

Output:

```md
Original Tree:
│       ┌── 14
│   ┌── 12
│   │   └── 10
└── 8
    │   ┌── 6
    └── 4
        └── 2
Tree after inserting 5:
│       ┌── 14
│   ┌── 12
│   │   └── 10
└── 8
    │   ┌── 6
    │   │   └── 5
    └── 4
        └── 2
```

As you can see, the `pretty_print` method displays the tree in a way that is easy to understand, with the root of the tree at the top, and each level indented accordingly. The arrows indicate the direction of the children (left or right) and the `┌` and `└` characters indicate the placement of the node in relation to its parent (left or right child).

Overall, this Tree class provides all the basic functionalities of a binary search tree and it was a project for the Ruby path in The Odin Project.
