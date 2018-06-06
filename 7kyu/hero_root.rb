# One of the first algorithm used for approximating the integer square root of a positive integer n is known as "Hero's method", named after the first-century Greek mathematician Hero of Alexandria who gave the first description of the method. Hero's method can be obtained from Newton's method which came 16 centuries after.

# We approximate the square root of a number n by taking an initial guess x, an error e and repeatedly calculating a new approximate integer value x using: (x + n / x) / 2; we are finished when the previous x and the new x have an absolute difference less than e.

# We supply to a function (int_rac) a number n (positive integer) and a parameter guess (positive integer) which will be our initial x. For this kata the parameter 'e' is set to 1.

# Hero's algorithm is not always going to come to an exactly correct result! For instance: if n = 25 we get 5 but for n = 26 we also get 5. Nevertheless 5 is the integer square root of 26.


def int_rac(n, guess)
    # your code
    count = 0
    prev = nil
    loop do 
      temp = ((guess + n) / guess) / 2
      if (guess - prev) < 1
        break
      end
      prev = guess
      guess += guess
      count += 1

    end
    count
end



p int_rac(125348, 300) #, 3
p int_rac(25, 1) #, 4