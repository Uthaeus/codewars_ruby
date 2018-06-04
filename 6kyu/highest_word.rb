# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to it's position in the alphabet: a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

def high x 
  letters = ('a'..'z').to_a
  indexes = (1..26).to_a
  obj = letters.zip(indexes)
  highest_count = 0
  highest_word = ''

  word_arr = x.split(' ')
  word_arr.each do |word|
    current_count = 0
    letter_arr = word.split('')
    letter_arr.each do |l|
      obj.each do |o|
        if l == o[0]
          current_count += o[1]
        end
      end
    end
    if current_count > highest_count
      highest_count = current_count
      highest_word = word 
    end
  end
  return highest_word
end



# def high(x)
#   # Code here
#   word_arr = x.split(' ')
#   highest_score = 0
#   highest_word = ''

#   word_arr.each do |word|
#     temp = word_score(word)
#     if temp > highest_score
#       highest_score = temp
#       highest_word = word 
#     end
#   end
#   highest_word

# end

# def word_score word 
#   letters = word.split('')
#   score = 0
#   letters.each do |i|
#     p i 
#     p i.ord 
#     score += i.ord
#   end

#   score
# end

# p word_score('climbing')
# p word_score('volcano')



p high('man i need a taxi up to ubud') #, 'taxi'
p high('what time are we climbing up the volcano') #, 'volcano'
p high('aa b') #, 'aa'





