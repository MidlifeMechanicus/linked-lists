class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    # adds a new node containing value to the end of the list
    if @head.nil?
      @head = Node.new(value)
    else
      current = @head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = Node.new(value)
    end
  end

  def prepend(value)
    # adds a new node containing value to the start of the list
    if @head.nil?
      @head = Node.new(value)
    else
      current = @head
      @head = Node.new(value)
      @head.next_node = current
    end
  end

  def size
    # returns the total number of nodes in the list
    size = 0
    unless @head.nil?
      current = @head
      size = 1
      while current.next_node != nil
        current = current.next_node
        size += 1
      end
    end
    puts size
  end

  def head
    #  returns the first node in the list
    puts @head.value unless @head.nil?
  end

  def tail
  # returns the last node in the list
    unless @head.nil?
      node = @head
      until node.next_node.nil?
        node = node.next_node
      end
      puts node.value
    end
  end

  def at(index)
    # returns the node at the given index
    unless @head.nil?
      index_valid = true
      i = 0
      node = @head
      until i == index
        if node.next_node.nil?
          puts "No such node"
          index_valid = false
          break
        else
          node = node.next_node
          i += 1
        end
      end
      puts node.value unless index_valid == false
    end
  end

  def pop
    #  removes the last element from the list
  end

  def contains?(value)
    #  returns true if the passed in value is in the list and otherwise returns false. returns true if the passed in value is in the list and otherwise returns false.
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found.
  end

  def to_s
    # represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  end

end