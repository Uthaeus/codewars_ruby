# Given an array of integers of any length, return an array that has 1 added to the value represented by the array.


def up_array(arr)
    if arr.length < 1 || arr.any? { |x| x > 9 || x < 0 }
        return nil
    end

    num = arr.join('').to_i + 1

    num.to_s.split('').map { |i| i.to_i }
end



p up_array([2,3,9]) #, [2,4,0]