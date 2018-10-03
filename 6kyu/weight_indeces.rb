# Given a package with a weight limit limit and an array arr of item weights, implement a method (ruby)/function (javascript) that finds two items whose sum of weights equals the weight limit limit. Your method/function should return a pair ex. [i, j] of the indices of the item weights. If such a pair doesn’t exist, return nil/null.


#Remember try to avoid brute forcing it.
#Make it linear or close to linear.

def get_indices_of_item_weights(arr, limit)
    # Good Luck, and have a good one :)
    x = 0
    while x < arr.length do 
        temp = limit - arr[x]
        temp_arr = arr[0...x] + arr[x + 1..-1]
        if temp_arr.include?(temp)
            return [x, arr.index(temp)]
        end
        x += 1
    end
    return nil 
end



