# Your job is to return a single array that has first the numbers sorted in ascending order, followed by the strings sorted in alphabetic order. The values must maintain their original type.


def db_sort arr
    nums = []
    strs = []

    arr.each do |i|
        i.class == Integer ? nums << i : strs << i  
    end

    nums.sort! 
    strs.sort! { |a, b| a <=> b }

    nums + strs 
end



p db_sort([14, 32, 3, 5, 5]) #, [3, 5, 5, 14, 32]
p db_sort(["Banana", "Orange", "Apple", "Mango", 0, 2, 2]) #, [0,2,2,"Apple","Banana","Mango","Orange"]