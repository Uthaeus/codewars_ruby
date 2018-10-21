# Given an array of up to 100 numbers ranging from 1-1000, determine how many combinations of 2 numbers produce an even sum.


def even_twins(array)
    combos = array.combination(2).to_a.uniq
    evens = combos.select { |i| i.reduce(:+).even? }
    result = evens.map { |i| i.reduce(:+) }
    result.uniq.count
end



p even_twins([7,7,7]) #,1
p even_twins([5,6,7,8,9]) #,3