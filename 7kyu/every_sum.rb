# Given a long number, return all the possible sum of two digits of it.


def digits(num)
  #..
  num_arr = num.to_s.split('').map { |i| i.to_i }
  combos = num_arr.combination(2).to_a
  result = []

  combos.each do |c|
    result << c.reduce(:+)
  end

  result
end



p digits(81596) #, [ 9, 13, 17, 14, 6, 10, 7, 14, 11, 15 ]