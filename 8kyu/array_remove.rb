# You come across a method for removing all odd numbers from an array


def remove_odd_numbers_from_array(a)
    a.select { |i| i.even? }
end



p remove_odd_numbers_from_array([2,2,5,6,7,14,8,9,11,10,12]) #,[2,2,6,14,8,10,12]