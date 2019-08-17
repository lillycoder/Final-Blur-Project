#linked list1 exercise
#Anne von Luhrte
#GW Bootcamp
#with great help from website:  addstar34.github.io/ruby-linked-list-reverse-using-a stack/
#did not use this website until after I struggled for HOURS and HOURS on this project

class LinkedListNode #linked node

  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

#build stack

class Stack

  attr_reader :data

  def initialize
    @data = nil
  end

  def push(newvalue)
    @data = LinkedListNode.new(newvalue, @data)
  end

  def pop
    return print "nil/n" if @data.nil?
    print "#{@data.value}\n"
    @data = @data.next_node
  end
end

def print_values(list)
  if list
    print "#{list.value} -->"
    print_values(list.next_node)
  else
    print "nil/n"
    puts " "
    return
  end
end
   
def reverse_list(list) 
  stack = Stack.new
  while list
    stack.push(list.value)
    list  = list.next_node
  end
  return stack.data
end

# Main Program

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "--------------"
revlist = reverse_list(node3)
print_values(revlist)








  




