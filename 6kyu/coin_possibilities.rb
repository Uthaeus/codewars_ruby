# In this kata you will be given an integer n, which is the number of times that is thown a coin. You will have to return an array of string for all the possibilities (heads[H] and tails[T]). Examples:

# coin(1) should return {"H", "T"}
# coin(2) should return {"HH", "HT", "TH", "TT"}
# coin(3) should return {"HHH", "HHT", "HTH", "HTT", "THH", "THT", "TTH", "TTT"}

# When finished sort them alphabetically.



def coin(n)
  # code here
  possibles = ['H', 'T']
  perms = possibles.repeated_permutation(n).to_a.map { |i| i.join('') }

  perms.flatten
end




p coin(2) #,["HH", "HT", "TH", "TT"]
p coin(3) #,["HHH", "HHT", "HTH", "HTT", "THH", "THT", "TTH", "TTT"]