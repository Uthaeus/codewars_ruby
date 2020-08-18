# You will be given an array of all the family members' ages, in any order. The ages will be given in whole numbers, so a baby of 5 months, will have an ascribed ‘age’ of 0. Return a new array (a tuple in Python) with [youngest age, oldest age, difference between the youngest and oldest age].


def difference_in_ages(ages)
    ages = ages.sort!

    youngest = ages.first
    oldest = ages.last
    diff = oldest - youngest

    [youngest, oldest, diff]
end


p difference_in_ages([16, 22, 31, 44, 3, 38, 27, 41, 88])  #, [3, 88, 85]