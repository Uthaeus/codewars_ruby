# In honor of my grandfather's memory we will write a function using his formula!

# Take a list of ages when each of your great-grandparent died.
# Multiply each number by itself.
# Add them all together.
# Take the square root of the result.
# Divide by two.

def predict_age(*ages)
  # your code here
  age_arr = ages.map { |i| i ** 2 }

  return ((age_arr.reduce(:+) ** 0.5) / 2).floor
end



p predict_age(65,60,75,55,60,63,64,45) # => 86