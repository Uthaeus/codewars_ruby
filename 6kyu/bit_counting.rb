# Write a function that takes an (unsigned) integer as input, and returns the number of bits that are equal to one in the binary representation of that number.

# Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case



def count_bits(n)
  # TODO: Program me
  result_arr = []

  while n > 0 do 
    result_arr << n % 2
    n /= 2
  end
  result_arr.select { |i| i == 1 }.count
end



p count_bits(9) #, 2
p count_bits(7) #, 3
p count_bits(10) #, 2