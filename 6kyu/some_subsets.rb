# We have a set of consecutive numbers from 1 to n. We want to count all the subsets that do not contain consecutive numbers. E.g.

# If our set S1 is equal to [1,2,3,4,5] The subsets that fulfill these property are:

# [1],[2],[3],[4],[5],[1,3],[1,4],[1,5],[2,4],[2,5],[3,5],[1,3,5]
# A total of 12 subsets.

# From the set S2 equals to[1,2,3], it is obvious that we have only 4 subsets and are:

# [1],[2],[3],[1,3]
# Make a code that may give the amount of all these subsets for any integer n >= 2.



def f(n)
    # your code here
    result = []
    possibles = (1..n).flat_map{ |s| [*1..n].combination(s).map(&:join) }
    
    possibles.each do |i|
      x = 0
      temp_arr = []
      temp = i.split('').map { |j| j.to_i }
      p temp
      while x < temp.length do 
        if i[x + 1] != i[x] + 1 || i[x + 1] == nil
          temp_arr << i[x]
        end
      end
      result << temp_arr
    end
    result.length
end




p f(5) #, 12
p f(2) #, 2