require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # your code here

    # iterate to the end of the list and then reverse n places
    if !head 
      return nil
    elsif n < 1
      return nil
    end

    # initialize a counter for list length
    length = 1
    last_node = self.head
    while last_node.next_node
      last_node = last_node.next_node
      length += 1
    end
    # we now have the length of the list and the last node
    # if n is greater than the length of the list, return nil
    if n > length 
      return nil
    end

    response = self.head
    # iterate over the list again, checking to see if there is a node n places away from the end. 
    (length - (n)).times do 
      response = response.next_node
    end

    response.value
    # if there is, response = current node. 

    # if not, return response

# 1 -> 2 -> 3
  end

end
