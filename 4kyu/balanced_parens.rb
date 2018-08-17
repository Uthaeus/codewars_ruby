# Write a function which makes a list of strings representing all of the ways you can balance n pairs of parentheses


def balanced_parens(n)
    # Your code here!
    parens = []

    n.times do 
      parens << '(' << ')'
    end

    combos = parens.combination(parens.length).to_a

    # result = validator(combos)

    # result 

    combos
end

def validator p 
  arrs = p.uniq
  result = []

  arrs.each do |arr|
    x = 0
    count = 0
    flag = true

    while x < arr.length do 
      arr[x] == '(' ? count += 1 : count -= 1

      flag = false if count < 0
      x += 1
    end

    result << arr.join if flag
  end

  result
end



p balanced_parens(2).sort! #, ["(())", "()()"]
p balanced_parens(3).sort! #, ["((()))","(()())","(())()","()(())", "()()()"])

# p validator(f)







