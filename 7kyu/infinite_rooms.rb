# Given the initial group size you will have to find the group size staying in the hotel on a specified day.


def group_size(s, d)
    x = s
    while x <= d do 
        s += 1
        x += s
    end
    s
end



p group_size(3, 14) #, 6
p group_size(3, 10) #, 5