# Replace all vowel to exclamation mark in the sentence. aeiouAEIOU is vowel.



def replace(s)
  s.gsub(/[aeiouAEIOU]/, '!')
end



p replace("aeiou") # , "!!!!!"
p replace("ABCDE") # , "!BCD!"