# Observe the process with the array given below and the tracking of the sums of each corresponding array.


def track_sum(arr)
    results = []
    result = []
    first = arr.reduce(:+)
    results << first 
    second = arr.uniq.reduce(:+)
    results << second 
    sorted = arr.uniq.sort! { |a, b| b - a }
    x = 0
    second_arr = []
    while x < sorted.length - 1 do 
        second_arr << sorted[x] - sorted[x + 1]
        x += 1
    end
    second_first = second_arr.reduce(:+)
    results << second_first 
    second_second = second_arr.uniq.reduce(:+)
    results << second_second
    second_final = second_arr.uniq
    result << results  
    result << second_final
    result
end



# arr = [5, 3, 6, 10, 5, 2, 2, 1]
# p track_sum(arr) #, [[34, 27, 9, 7], [4, 1, 2]])

arr = [4, 4, 4, 4, 4, 4, 4, 1]
p track_sum(arr) #, [[29, 5, 3, 3], [3]])