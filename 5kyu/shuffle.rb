# The task for this kata would be to create a code to count all these permutations for an array of certain length.


def all_permuted(array_length)
    arr = (1..array_length).to_a
    arr.permutation.to_a.length 
    
end



p all_permuted(4) #, 9)
#p all_permuted(30) #,97581073836835777732377428235481)