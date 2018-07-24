# Create a method to_h that accepts a list, and converts it to a hash of key-value pairs.

# Here's a simple example:

# animals = [["cat", "dog"], ["duck", "cow"]]
# to_h(animals)
#     #=> {"cat" => "dog", "duck" => "cow"}


def to_h list
  # your solution here
  result = {}

  list.each do |a, b|
    result[a] = b 
  end
  result
end



animals = [["cat", "dog"], ["duck", "donkey"]]

p to_h(animals) #, {"cat" => "dog", "duck" => "donkey"}