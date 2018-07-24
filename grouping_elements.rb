# Create a method group_by that accepts a list and a block. It should return a hash where the keys are the block return values, and the hash values are arrays of the corresponding items grouped together.


def group_by list, &block
  # your solution here
  list.group_by &block
end



animals = ["cat", "dog", "duck", "cow", "donkey"]

p group_by(animals){|animal| animal[0]} #, {"c" => ["cat", "cow"], "d" => ["dog", "duck", "donkey"]}