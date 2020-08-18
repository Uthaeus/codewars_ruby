# You are given two strings. In a single move, you can choose any of them, and delete the first (i.e. leftmost) character.


def shift_left(a, b)
  count = 0

  if a == b 
    return count 
  else
    count += 1
    a = a.slice(1, -1)
    if a == b 
      return count
end



p shift_left("test", "west") #, 2