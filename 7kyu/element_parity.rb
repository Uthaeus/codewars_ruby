# In this Kata, you will be given an array of integers whose elements have both a negative and a positive value, except for one integer that is either only negative or only positive. Your task will be to find that integer.


def solve(arr)
    arr.each do |x|
        if !arr.include? x * -1
            return x
        end
    end
end


p solve([1,-1,2,-2,3]) #,3