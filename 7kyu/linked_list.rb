# Create a function stringify which accepts an argument list/$list and returns a string representation of the list. The string representation of the list starts with the value of the current Node, specified by its data/$data/Data property, followed by a whitespace character, an arrow and another whitespace character (" -> "), followed by the rest of the list. The end of the string representation of a list must always end with null/NULL/None/nil/nullptr/null() (all caps or all lowercase depending on the language you are undertaking this Kata in). For example, given the following list:

class Node
  attr_reader :data, :next_node

  def initialize(data, next_node=nil)
    @data = data
    @next_node = next_node
  end
end

def stringify(list)
  # add your code here
  output = []
  while list
    output.push(list.data)
    list = list.next_node
  end
  output.push('nil').join(' -> ')

end



linked_list = Node.new(1, Node.new(2, Node.new(3)))
p stringify(linked_list) #, "1 -> 2 -> 3 -> nil")