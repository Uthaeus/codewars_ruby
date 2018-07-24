# Summary
# Given a Hash made up of keys and values, invert the hash by swapping them.



def invert_hash(hash)
  result = {}

  hash.each do |k, v|
    result[v] = k 
  end

  result
end



t1 = { 'foo'   => 'bar',
       'hello' => 'world' }

p invert_hash(t1)

  #{ 'bar'   => 'foo',
    #'world' => 'hello' }