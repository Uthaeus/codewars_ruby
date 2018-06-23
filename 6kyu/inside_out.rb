# You are given a string of words (x), for each word within the string you need to turn the word 'inside out'. By this I mean the internal letters will move out, and the external letters move toward the centre.

# If the word is even length, all letters will move. If the length is odd, you are expected to leave the 'middle' letter of the word where it is.

# An example should clarify:

# 'taxi' would become 'atix' 'taxis' would become 'atxsi'



def inside_out s
  #..
  word_arr = s.split(' ')

  word_arr.each do |word|
    mid = (word.length / 2).floor
    if word.length % 2 == 0
      first = word[0..mid]
      second = word[mid + 1..-1]
      
    temp_word = word.split('')
    temp_word.each do |letter|

    end
  end
end



p inside_out('what time are we climbing up the volcano') #, 'hwta item are we milcgnib up the lovcona'