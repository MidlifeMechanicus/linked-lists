class Node
  def initialize(value)
    @value = value
    @next = nil
  end

  attr_assessor :value, :next
end