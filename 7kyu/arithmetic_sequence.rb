# This function, arithmetic_sequence_sum(a, r, n), should return the sum of the first (n) elements of a sequence in which each element is the sum of the given integer (a), and a number of occurences of the given integer (r), based on the element's position within the sequence.


def arithmetic_sequence_sum(a, r, n)
    result = []

    n.times do |x|
        temp = a + (r * x)
        result << temp 
    end
    result.reduce(:+)
end



p arithmetic_sequence_sum(2, 2, 10) #, 110
p arithmetic_sequence_sum(1, -2, 10) #, -80