# Lastly, when we want to take one action if a boolean is true, and another if it is false, we use an if-statement.

# For this kata, don't worry about edge cases like where unexpected input is passed to the function. You'll get to worry about these enough in later exercises.


def boolean_to_string(b)
  if b
    return "true"
  else
    return "false"
  end
end



p boolean_to_string(true) # == "true"