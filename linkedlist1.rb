#linked list1 exercise
#Anne von Luhrte
#GW Bootcamp

class LinkedListNode #linked node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def reverse_list 
  end
end

#build stack

class Stack #linked list

  def initialize
    @nodebottom = LinkedListNode.new(37)
    @nodemiddle = LinkedListNode.new(99, @nodebottom)
    @nodetop = LinkedListNode.new(12, @nodemiddle)
  end

  def reverse list
    
  end

  def output_list_forward_and_backwards
    puts "---------------"
    puts "this is the original list"
    print_values(@nodetop)
    puts "this is the list printed backwards"
    prints_list_backwards(@nodetop)
    puts "nil"
    puts "---------------"

  end

#print list

  def print_values(list_node)
    
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end

# prints list backwards

  def prints_list_backwards(list_node)
    
    if list_node.next_node == nil
      print "#{list_node.value} --> "
    elsif list_node.next_node !=nil
      prints_list_backwards(list_node.next_node)
      print "#{list_node.value} --> "
    end
  end

  def build_new_list(list_node)
    while list_node.next == nil
      @reverse_stack_top = LinkedListNode.new(list_node.value)
    elsif list_node.next_node !=nil
      @reverse_stack_next = LinkedListNode.new(list_node.value, list_node.next_node)
      build_new_list(list_node.next_node)
    end
  end

  def print_reversed_list
    

end

# Main Program

stack = Stack.new
stack.output_list_forward_and_backwards
puts " "
puts "actual new stack built"




  




