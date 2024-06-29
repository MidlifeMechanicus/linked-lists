require_relative "main/linked_list"
require_relative "main/node"

list = LinkedList.new

list.at(0)

list.append(1)

list.append(2)

list.prepend(0)

list.append(3)

p list

list.contains?(2)
list.find(2)
list.find(10)