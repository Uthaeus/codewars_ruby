# Definition
# A number is called Automorphic number if and only if its square ends in the same digits as the number itself.

# Task
# Given a number determine if it Automorphic or not .


def automorphic(n)
  #your code here
  square = n ** 2
  n1 = n.to_s.split('')
  n2 = square.to_s.split('')
  n1_arr = []
  n2_arr = []
  x = -1

  n1.length.times do 
    n1_arr << n1[x]
    n2_arr << n2[x]
    x -= 1
  end
  n1_arr == n2_arr ? "Automorphic" : "Not!!"
end



#p automorphic(25) #,"Automorphic"
#p automorphic(53) #,"Not!!"
p automorphic(95) #,"Not!!"
p automorphic(225) #,"Not!!"