# frozen_string_literal: true

# Represents the full list
class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end
end

# Node Class
class Node
  attr_accessor :next, :data

  def initialize(value)
    @next_node = nil
    @value = value
  end
end
