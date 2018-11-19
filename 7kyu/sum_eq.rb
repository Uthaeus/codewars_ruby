# Define a method sum_eq_n? which takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n. An empty array should sum to zero by definition


def sum_eq_n?(arr, n)
    if arr.empty?
        return n == 0
    end 
    combos = arr.combination(2).to_a
    combos.any? { |c| c.reduce(:+) == n }
end



p sum_eq_n?([1,2,3,13], 14) #, true