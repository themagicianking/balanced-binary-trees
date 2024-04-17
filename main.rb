# frozen_string_literal: true

# a class that creates nodes
class Node
  include Comparable

  def initialize(value, left = nil, right = nil)
    # left and right should be nodes if given
    @value = value
    @left = left
    @right = right
  end

  def insert(value)
    if value < @value
      @left.nil? ? @left = Node.new(value) : @left.insert(value)
    elsif value > @value
      @right.nil? ? @right = Node.new(value) : @right.insert(value)
    else
      puts 'value was not inserted'
    end
  end

  attr_accessor :value, :left, :right
end

# a class that creates trees
class Tree
  def initialize(array)
    @root = build_tree(array)
  end

  def build_tree(array)
    array.uniq!
    array.each { |value| insert(value) }
    @root
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.value}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end

  def insert(value)
    if @root.nil?
      @root = Node.new(value)
    else
      @root.insert(value)
    end
  end

  def delete(value)
    # must use the tree and not the og array
  end

  def find(value)
    # returns the node w the given value
  end

  def level_order(block=false)
    # travels the tree and puts each node through the block.
    # should return an array of values if not given a block.
  end

  def inorder(block=false)
    # left root right
  end

  def preorder(block=false)
    # root left right
  end

  def postorder(block=false)
    # left right root
  end

  def height(node)
    # returns the height of the node
  end

  def depth(node)
    # returns the depth of the node
  end

  def balanced?
    # returns a boolean based on if the tree is balanced
  end

  def rebalance
    # rebalances an imbalanced tree
  end
end

test_array = [1, 3, 2, 7, 8, 5, 9, 3, 4, 6]

test_tree = Tree.new(test_array)
puts test_tree.balanced?

test_tree.pretty_print
