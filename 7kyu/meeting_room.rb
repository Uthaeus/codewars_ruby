# In this kata, you will be given an array. Each value represents a meeting room. Your job? Find the first empty one and return it's index (N.B. There may be more than one empty room in some test cases).


def meeting(rooms)
    check = rooms.index('O')
    check.nil? ? 'None available!' : check  
end



p meeting(['X','X','O','X','X']) #, 2
p meeting(['X','X','X','X']) #, 'None available!'