# You have to return the digits of this number within an array in reverse order.


def digitize(n)
  #your code here
  arr = n.to_s.split('').reverse.map {|i| i.to_i}
  arr
end



p digitize(35231) #,[1,3,2,5,3]