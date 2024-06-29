require_relative "main/linked_list"
require_relative "main/node"

test0 = LinkedList.new
puts test0.to_s
puts test0.size
p test0.head
p test0.tail
p test0.at(0)

test1 = LinkedList.new
test1.prepend("test")
puts test1.to_s
puts test1.size
puts test1.head
puts test1.tail
puts test1.at(5)

test2 = LinkedList.new
test2.append("B")
test2.prepend("A")
puts test2.to_s
puts test2.size
puts test2.head
puts test2.tail

test3 = LinkedList.new
test3.append(0)
test3.append(1)
test3.append(2)
puts test3.to_s
puts test3.size
puts test3.head
puts test3.at(1)
puts test3.tail