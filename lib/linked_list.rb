require_relative 'node'
require 'pry'
class LinkedList

attr_reader :head, :data

  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      while current_node.next_node !=nil
        current_node = current_node.next_node
      end
      new_node = Node.new(data)
      current_node.next_node = new_node
      new_node
    end
  end

  def count
    current_node = @head
    counter = 1
    while current_node.next_node != nil
      current_node = current_node.next_node
      counter += 1
    end
    counter
  end

  def to_string
    array = [@head.data]
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
      array << current_node.data
    end
    array.join(" ")
  end

  def prepend(data)
    new_node = Node.new(data)
    current_node = @head
    new_node.next_node = @head
    @head = new_node
  end

    def insert(index, data)
     current_node = @head
     count = 0
     until count == index
      #  require 'pry'; binding.pry
       current_node = current_node.next_node
       count += 1
     end
     new_node = Node.new(data)
     new_node.next_node = current_node
   end

   def include?(data)
        current_node = @head
        while current_node != nil
          return true if current_node.data == data
          current_node = current_node.next_node
        end
        else
          false
        end

      def pop(data)
          current_node = @head
          while current_node.next_node !=nil
            current_node = current_node.next_node
          end
    end
  end
