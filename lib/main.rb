require_relative "main/linked_list"
require_relative "main/node"

list = LinkedList.new

list.append(1)

list.append(2)

p list

list.prepend(3)

p list

list.append(4)

p list

list.size
