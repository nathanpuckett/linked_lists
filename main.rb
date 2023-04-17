# frozen_string_literal: true

# Represents the full list
class LinkedList
  attr_accessor :name, :head, :tail

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
      @tail = value
    else
      @tail.next_node = value
      @tail = value
    end
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
