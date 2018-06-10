# In this Kata, you will be given a string with brackets and an index of an opening bracket and your task will be to return the index of the matching closing bracket. Both the input and returned index are 0-based except in Fortran where it is 1-based. An opening brace will always have a closing brace



def solve(s, n)
  #..
  x = n + 1
  if s[n] != '('
    return -1
  end 
  flag = 0
  while x < s.length do 
    if s[x] == ')'
      flag -= 1
    elsif s[x] == '('
      flag += 1
    end
    if flag == -1
      return x 
    end
    x += 1
  end
end



p solve("((1)23(45))(aB)",6) #,9
p solve("(g(At)IO(f)(tM(qk)YF(n)Nr(E)))",11) #,28