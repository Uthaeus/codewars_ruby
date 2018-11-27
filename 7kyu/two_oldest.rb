# The two oldest ages function/method needs to be completed. It should take an array of numbers as its argument and return the two highest numbers within the array. The returned value should be an array in the format [second oldest age, oldest age].


def two_oldest_ages(ages)
    ages.sort! { |a, b| a - b }
    [ages[-2], ages[-1]]
end



p two_oldest_ages([6, 5, 83, 5, 3, 18]) #, [18, 83]