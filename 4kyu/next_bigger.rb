# You have to create a function that takes a positive integer number and returns the next bigger number formed by the same digits:


def next_bigger(n)
  #your code here
  if n < 10
    return -1
  end

  num_arr = n.to_s.split('').map { |i| i.to_i }
  
  perms = num_arr.permutation.to_a.map { |j| j.join('').to_i }.select { |i| i > n}
  perms.sort! { |a, b| a <=> b }
  
  perms.empty? ? -1 : perms[0]
end




p next_bigger(2017) #,2071
# p next_bigger(144) #,414

