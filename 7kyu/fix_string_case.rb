# In this Kata, you will be given a string that may have mixed uppercase and lowercase letters and your task is to convert that string to either lowercase only or uppercase only based on:

# make as few changes as possible.
# if the string contains equal number of uppercase and lowercase letters, convert the string to lowercase.



def solve s
  #...
  str_arr = s.split('')
  up = 0
  down = 0
  str_arr.each do |i|
    if i.ord >= 65 && i.ord <= 90
      up += 1
    elsif i.ord >= 97 && i.ord <= 122
      down += 1
    end
  end

  up > down ? s.upcase : s.downcase
end



p solve("CODe") #,"CODE"