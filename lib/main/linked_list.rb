class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    # adds a new node containing value to the end of the list
    if @head.nil?
      @head = Node.new(value)
    else
      current_link = @head
      current_link = current_link.next_node until current_link.next_node.nil?
      current_link.next_node = Node.new(value)
    end
  end

  def prepend(value)
    # adds a new node containing value to the start of the list
    if @head.nil?
      @head = Node.new(value)
    else
      current_link = @head
      @head = Node.new(value)
      @head.next_node = current_link
    end
  end

  def size
    # returns the total number of nodes in the list
    size = 0
    unless @head.nil?
      current_link = @head
      size = 1
      until current_link.next_node.nil?
        current_link = current_link.next_node
        size += 1
      end
    end
    size
  end

  def head
    #  returns the first node in the list
    @head.nil? ? @head : @head.value
  end

  def tail
  # returns the last node in the list
    unless @head.nil?
      current_link = @head
      until current_link.next_node.nil?
        current_link = current_link.next_node
      end
      current_link.value
    end
  end

  def at(index)
    # returns the node at the given index
    unless @head.nil?
      index_valid = true
      i = 0
      current_link = @head
      until i == index
        if current_link.next_node.nil?
          index_valid = false
          break
        else
          current_link = current_link.next_node
          i += 1
        end
      end
      current_link.value unless index_valid == false
    end
  end

  def pop
    #  removes the last element from the list
    unless @head.nil?
      if @head.next_node.nil?
        @head = nil
      else
        previous_link = @head
        pop_link = @head.next_node
        until pop_link.next_node.nil?
          previous_link = previous_link.next_node
          pop_link = pop_link.next_node
        end
        previous_link.next_node = nil
      end
    end
  end

  def contains?(value)
    #  returns true if the passed in value is in the list and otherwise returns false. returns true if the passed in value is in the list and otherwise returns false.
    contains_valid = false
    unless @head.nil?
      current_link = @head
      until current_link.next_node.nil?
        if current_link.value == value
          contains_valid = true
          break
        else
          current_link = current_link.next_node
        end
        contains_valid = true if current_link.value == value
      end
    end
    contains_valid
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found.
    current_link = @head
    index = 0
    found_value = false
    until current_link.nil?
      found_value = true if current_link.value == value
      current_link = current_link.next_node
      index +=1 unless found_value
    end
    index if found_value
    # I really wanted to find a way to include the last link in the Until loop. Credit to Harmolipi for this one.
  end

  def to_s
    # represent your LinkedList objects as strings, so you can print them out and preview them in the console.
    # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
    string = ""
    unless @head.nil?
      current_link = @head
      string = "( #{current_link.value} ) -> "
      until current_link.next_node.nil?
        string += "( #{current_link.next_node.value} ) -> "
        current_link = current_link.next_node
      end
    end
    string + "nil"
  end

  # Extra credit

  def insert_at(value, index)
    # inserts a new node with the provided value at the given index
    return puts 'Selected index does not exist' if index > self.size
    if index.zero?
      self.prepend(value)
    elsif index == self.size
      self.append(value)
    else
      previous_link = @head
      insert_link = @head.next_node
      i = 1
      until i == index
        previous_link = previous_link.next_node
        insert_link = insert_link.next_node
        i += 1
      end
      subsequent_link = insert_link
      previous_link.next_node = Node.new(value)
      insert_link = previous_link.next_node
      insert_link.next_node = subsequent_link
    end
  end

  def remove_at(index)
    # removes the node at the given index
    return puts 'Selected index does not exist' if index + 1 > self.size
    if index + 1 == self.size
      self.pop
    elsif index.zero?
      @head = @head.next_node
    else
      previous_link = @head
      remove_link = @head.next_node
      i = 1
      until i == index
        previous_link = previous_link.next_node
        remove_link = remove_link.next_node
        i += 1
      end
      subsequent_link = remove_link.next_node
      previous_link.next_node = subsequent_link
    end
  end
end