#linked list1 exercise
#Anne von Luhrte
#GW Bootcamp
#with great help from website:  addstar34.github.io/ruby-linked-list-floyd-cycle-detection/
#did not use this website until after I struggled for HOURS and HOURS on this project
#let me be clear I DO NOT UNDERSTAND this!!!!  I will talk to my mentor but I think I need some
#extra practice project on linked lists because I am not getting this


class LinkedListNode #linked node

  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

#build stack


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
   
def reverse_list(list, previous=nil) 
  if list
    next_node = list.next_node
    list.next_node = previous
    reverse_list(next_node, list)
  end
end

def infinite_loop?(list)

  tortoise = list.next_node
  hare = list.next_node

  until hare.nil?
    hare = hare.next_node
    return false if hare.nil?

    hare = hare.next_node
    tortoise = tortoise.next_node
    return true if hare == tortoise
  end
  return false

end


# Main Program

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

puts infinite_loop? (node3)
node1.next_node = node3
puts infinite_loop?(node3)







  




