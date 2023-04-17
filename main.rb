# frozen_string_literal: true

# Represents the full list
class LinkedList
  attr_accessor :name
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  # Adds to beginning of list
  def prepend(value)
    if @head.nil?
      @head = value
      @tail = value
    else
      value.next_node = @head
      @head = value
    end
  end

  # Adds to end of list
  def append(value)
    if @head.nil?
      @head = value
    else
      @tail.next_node = value
    end
    @tail = value
  end

  def size
    return 0 if @head.nil?

    total = 0
    node = @head
    until node.nil?
      total += 1
      node = node.next_node
    end
    total
  end

  def at(index)
    return 'Index does not exist' if self.size <= index

    count = 0
    node = @head
    until count == index
      count += 1
      node = node.next_node
    end
    node
  end

  # Remove last element from list & return it
  def pop
    return nil if head.nil?

    prev = nil
    cur = @head

    until cur.next_node.nil?
      prev = cur
      cur = cur.next_node
    end

    prev.next_node = nil
    @tail = prev

    cur
  end

  def contains?(value)
    result = false

    node = @head

    until node.nil?
      result = true if node.value == value
      node = node.next_node
    end

    result
  end
end

# Node Class
class Node
  attr_accessor :next_node, :value

  def initialize(value)
    @next_node = nil
    @value = value
  end
end

list = LinkedList.new

list.append(Node.new(2))
list.append(Node.new(3))
list.prepend(Node.new(1))
list.prepend(Node.new(0))

p list.contains?(4)
