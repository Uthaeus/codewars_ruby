# Given an array of integers, find the minimum number of elements to remove from the array so that the square root of the largest integer in the array is less or equal to the smallest number in the same array.


def min_remove arr
    return 0 if arr.length < 2
    x = 0
    arr.sort! { |a, b| b - a }
    min = nil
    y = arr.length - 1
    p arr 
    
    # while y > 0 do 
    #     if arr[y] > 1
    #         min = arr[y]
    #         break
    #     end
    #     y -= 1
    # end

    while x < arr.length do 
        return x if (arr[x] ** 0.5).floor <= arr[-1] 
        x += 1
    end
    arr 
end



# p min_remove([9,13,21,1,3,5,7]) # 2
p min_remove([1,3,1,1,3,3,5,5,1,2,2,1,2,2,5,5,5,2,2]) # 10