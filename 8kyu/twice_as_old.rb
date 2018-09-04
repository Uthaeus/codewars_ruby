# Your function takes two arguments:

# current father's age (years)
# current age of his son (years)
# Сalculate how many years ago the father was twice as old as his son (or in how many years he will be twice as old).


def twice_as_old(dad, son)
    # Have some code do stuff and possibly things
  count = 0

  if dad == (son * 2)
    return count
  elsif son > (dad / 2) 
    loop do 
      son -= 1
      dad -= 1
      count += 1
      if dad == (son * 2)
        return count
      end
    end
  else
    loop do 
      son += 1
      dad += 1
      count += 1
      if dad == (son * 2)
        return count
      end
    end
  end
end



p twice_as_old(55,30) #, 5
p twice_as_old(42,21) #, 0
p twice_as_old(22,1) #, 20