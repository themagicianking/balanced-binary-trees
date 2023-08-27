class Node
  attr_accessor :head, :left, :right
end

class Tree
  attr_accessor :root

  def initialize(array)
    @array = array
  end

  def build_tree(array)
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