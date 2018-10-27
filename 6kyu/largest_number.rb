# Create a function that takes a list of one or more non-negative integers, and arranges them such that they form the largest possible number.


def largest_arrangement(array)
    combos = array.permutation(array.length).to_a
    max = 0
    combos.each do |c|
        temp = c.join.to_i
        if temp > max 
            max = temp 
        end
    end
    max 
end



p largest_arrangement([4, 50, 8, 145]) #, 8504145
p largest_arrangement([5, 2, 1, 9, 50, 56]) #, 95655021