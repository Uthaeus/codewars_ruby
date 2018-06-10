# Two strings a and b are called isomorphic if there is a one to one mapping possible for every character of a to every character of b. And all occurrences of every character in a map to same character in b.

# Task
# In this kata you will create a function that return True if two given strings are isomorphic to each other, and False otherwise. Remember that order is important.

# Your solution must be able to handle words with more than 10 characters.



def isomorph(a,b)
  a_hash = a.each_char.with_index.with_object({}) { |(c, i), h| (h[c] ||= []) << i }
  b_hash = b.each_char.with_index.with_object({}) { |(c, i), h| (h[c] ||= []) << i }

  a_pattern = a_hash.map { |_, l| l }
  b_pattern = b_hash.map { |_, l| l }

  if a_pattern.length != b_pattern.length
    return false 
  end

  c = a_pattern - b_pattern

  c.empty?
end


p isomorph("FARM", "WHALE") #, false
p isomorph("DISCRIMINATIVE", "SIMPLIFICATION") #, true
p isomorph("PHARMA", "NICHES") #, false
p isomorph("ABSORBEFACIENTS","COUNTERREACTION") #, false