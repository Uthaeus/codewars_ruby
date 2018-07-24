# Create the function projectPartners with the parameter n representing the number of students in Mrs. Frizzle's class. The function should return the total number of unique pairs she can make with n students.

# projectPartners(2)
#   --> returns 1

# projectPartners(4)
#   --> returns 6
# Remarks
# your solution should not contain any arrays or objects that are used similar to an array. Note that Haskell will use rather large numbers, such as 10^40, so any list-based solution will autmatically fail the test.

# your function will only recieve a single number that is greater than or equal to 2 -- you do not need to worry about input validation.



def project_partners(n)
  #your code here
  a = (1..n).to_a
  a.combination(2).size
end



p project_partners(4) #, 6
p project_partners(5) #, 10