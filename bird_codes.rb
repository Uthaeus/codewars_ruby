# In the world of birding there are four-letter codes for the common names of birds. These codes are created by some simple rules:

# If the bird's name has only one word, the code takes the first four letters of that word.
# If the name is made up of two words, the code takes the first two letters of each word.
# If the name is made up of three words, the code is created by taking the first letter from the first two words and the first two letters from the third word.
# If the name is four words long, the code uses the first letter from all the words.
# (There are other ways that codes are created, but this Kata will only use the four rules listed above)

# Complete the function that takes an array of strings of common bird names from North America, and create the codes for those names based on the rules above. The function should return an array of the codes in the same order in which the input names were presented.


def bird_code(birds)
  # your code
  result = []
  birds.each do |i|
    temp = ''
    new_i = i.gsub(/\W/, ' ')
    arr = new_i.split(' ')
    count = arr.length
    case count
    when 1 then temp = arr[0][0..3]
    when 2 then temp = arr[0][0..1] + arr[1][0..1]
    when 3 then temp = arr[0][0] + arr[1][0] + arr[2][0..1]
    when 4 then temp = arr[0][0] + arr[1][0] + arr[2][0] + arr[3][0]
    end
    result.push(temp.upcase)
  end
  return result 
end



p bird_code(["Common Tern", "Black-Capped Chickadee"]) #, ["COTE","BCCH"])

