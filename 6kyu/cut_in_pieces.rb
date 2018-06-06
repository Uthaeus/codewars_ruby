# We need a function (for commercial purposes) that may perform integer partitions with some constraints. The function should select how many elements each partition should have. The function should discard some "forbidden" values in each partition. So, create part_const(), that receives three arguments. part_const((1), (2), (3))


def part_const(n, k, num)
  # Good Luck!
  [*1...n].repeated_combination(3).select { |i| i.reduce(:+) == 10 && !i.include?(num) }.count

end



p part_const(10, 3, 2) #, 4
#p part_const(10, 3, 0) #, 8