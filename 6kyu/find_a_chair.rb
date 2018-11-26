# Find the spare chairs from the array of meeting rooms. Each meeting room array will have the number of occupants as a string. Each occupant is represented by 'X'. The room array will also have an integer telling you how many chairs there are in the room.


def meeting(rooms, number)
    return 'Game On' if number == 0
    result = []

    rooms.each do |room|
        avail = [(room[1] - room[0].length), 0].max
        if number - avail < 0
            avail -= (avail - number)
        end
        number -= avail 
        result << avail 
        
        return result if number < 1
    end
    'Not enough!'
end



# p meeting([["XXX", 3], ["XXXXX", 6], ["XXXXXX", 9]], 4) #, [0, 1, 3]
# p meeting([["XXX", 1], ["XXXXXX", 6], ["X", 2], ["XXXXXX", 8], ["X", 3], ["XXX", 1]], 5) #, [0, 0, 1, 2, 2]

p meeting([["", 4], ["XXXXXXXX", 1], ["XXXXXXX", 9]], 3) #[3]