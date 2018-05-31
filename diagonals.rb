# We want to calculate the sum of the binomial coefficients on a given diagonal. The sum on diagonal 0 is 8 (we'll write it S(7, 0), 7 is the number of the line where we start, 0 is the number of the diagonal). In the same way S(7, 1) is 28, S(7, 2) is 56.

# Can you write a program which calculate S(n, p) where n is the line where we start and p is the number of the diagonal?

# The function will take n and p (with: n >= p >= 0) as parameters and will return the sum.


def diagonal(n, p)
    # your code
    r = p + 1
    n = n + 1
    diff = n - r 
    return factorial(n) / (factorial(r) * factorial(diff))
end

def factorial n 
  (1..n).inject(:*) || 1
end



p diagonal(20, 15) #, 20349
p diagonal(20, 5) #, 54264)
p diagonal(7, 2) # 56
p diagonal(7, 1)


p factorial(5)
