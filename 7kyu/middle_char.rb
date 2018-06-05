# You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.



def get_middle(s)
  #your code here
  l = ((s.length - 1) / 2).floor 
  s.length.even? ? s[l..l + 1] : s[l]
end



p get_middle("test") #,"es"

p get_middle("middle") #,"dd"