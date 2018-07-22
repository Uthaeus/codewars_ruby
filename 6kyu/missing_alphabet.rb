# In this Kata you have to create a function,named insertMissingLetters,that takes in a string and outputs the same string processed in a particular way.

# The function should insert only after the first occurence of each character of the input string, all the alphabet letters that:

# -are NOT in the original string
# -come after the letter of the string you are processing

# Each added letter should be in uppercase, the letters of the original string will always be in lowercase.


def insert_missing_letters(st)
    #..
    string_array = st.split('')
    letters = ('a'..'z').to_a
    output = ''
    x = 0

    while x < string_array.length do 
      start = letters.index(string_array[x])
      temp = letters[start + 1..-1]

      
      if !output.include?(string_array[x])
        output += string_array[x]
        temp.each do |t|
          output += t.upcase unless string_array.include?(t)
        end
      else
        output += string_array[x]
      end
      x += 1
    end

    output 
end


p insert_missing_letters("hello") #,"hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ"