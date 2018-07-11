# Let's create some scrolling text!

# Your task is to complete the function which takes a string, and returns an array with all possible rotations of the given string, in uppercase.


def scrolling_text(text)
  # Good luck
  results = []
  counter = text.length
  new_text = text.upcase 

  counter.times do 
    results << new_text
    head = new_text[0]
    tail = new_text[1..-1]
    new_text = tail + head
    
  end
  results
end



p scrolling_text("abc") #, ["ABC","BCA","CAB"]
p scrolling_text("codewars") #, ["CODEWARS","ODEWARSC","DEWARSCO","EWARSCOD","WARSCODE","ARSCODEW","RSCODEWA","SCODEWAR"]