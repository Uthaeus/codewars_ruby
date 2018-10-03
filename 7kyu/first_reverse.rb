# Reversing an array can be a tough task, especially for a novice programmer. Mary just started coding, so she would like to start with something basic at first. Instead of reversing the array entirely, she wants to swap just its first and last elements.


def first_reverse_try(arr)
    #coding and coding..
    return [] if arr.empty?
    return arr if arr.length < 2
    if arr.length > 2
        return [arr[-1], *arr[1...-1], arr[0]]
    else
        return [arr[-1], arr[0]]
    end
end



p first_reverse_try([3, 5, 6, 2]) #, [2, 5, 6, 3]
p first_reverse_try([]) #, []