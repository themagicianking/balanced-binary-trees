class Node
  include Comparable

  attr_accessor :value, :left, :right
end

class Tree
  attr_accessor :root

  def initialize(array)
    @array = array
  end

  def build_tree
    if array.nil?
      array = @array.sort.uniq
    end
    mid = array[(array.length)/2.round]
    left = array[0..((array.length/2.round) - 1)]
    right = array[((array.length/2.round) + 1)..-1]
    if node.nil?
      @root = Node.new
      node = @root
    end
    array = left
    until array.length < 3
      node.value = mid
      node.left = Node.new
      node.right = Node.new
      array = left
      build_tree
      # etc etc
    end
    #array = right
    #node = @root
    #until 
      # hmm.
    #end
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end

  def insert(value)
  end

  def delete(value)
  end

  def find(value)
  end

  def level_order(block)
  end

  def inorder(block)
  end

  def preorder(block)
  end

  def postorder(block)
  end

  def height(node)
  end

  def depth(node)
  end

  def balanced?
  end

  def rebalance
  end
end

tree = Tree.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 8, 67, 6345, 324])

tree.build_tree
