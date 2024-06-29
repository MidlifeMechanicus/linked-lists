require_relative "main/linked_list"
require_relative "main/node"

list = LinkedList.new

list.append(1)

list.append(2)

list.prepend(0)

list.append(3)

p list

list.size

list.at(2)

list.at(10)
