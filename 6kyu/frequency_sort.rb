# In this Kata, you will sort elements in an array by decreasing frequency of elements. If two elements have the same frequency, sort them by increasing value.


def solve(arr)
    arr.sort_by! { |a| [-arr.count(a), a] }
end



p solve([2,3,5,3,7,9,5,3,7]) #,[3,3,3,5,5,7,7,2,9]