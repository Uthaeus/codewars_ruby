# The Caesar cipher is a notorious (and notoriously simple) algorithm for encrypting a message: each letter is shifted a certain constant number of places in the alphabet. For example, applying a shift of 5 to the string "Hello, world!" yields "Mjqqt, btwqi!", which is jibberish.

# Decrypting the message is straightforward if you know what shift was used. However, if you don't know the shift, you have to try all possible shifts until you find the right one. Since you don't know what the message is in advance (if you did, why would you be trying to decrypt it?), the "right" shift is the shift that allows you to get a message composed only of actual English words.

# In this kata, your task is to decrypt Caesar-encrypted messages using nothing but your wits, your computer, and a set of the 1000 (plus a few) most common words in English in lowercase (made available to you as a preloaded variable named WORDS, which you may use in your code as if you had defined it yourself). Your function, break_caesar, must return the most likely shift value as an integer.



def break_caesar(message)
    #...
  word_arr = message.split(' ').map { |i| i.downcase }
  result_x = nil 
  result_text = ''

  while result_x == nil do 
    x = 0
    temp_text = ''
    word_arr.each do |word|
      letter_arr = word.split('')
      
      letter_arr.each do |character|
        if character.ord >= 97 && character.ord <= 122
          temp_text += (character.ord + x).chr
        else
            temp_text += character
        end
      end
    end
    temp_arr = temp_text.split(' ')
    temp_arr.each do |temp_word|
      if temp_word in WORDS
        result_x = x 
      end
    end
  end
  result_x

  message_arr = message.split('')
  message_arr.each do |w|
    if w.ord >= 65 && w.ord <= 90 || w.ord >= 97 && w.ord <= 122
      result_text += (w.ord + result_x).chr 
    else
      result_text += w
    end
  end
  result_x 
end



p break_caesar("Mjqqt, btwqi!") #, 5
p break_caesar("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.") #, 13


def get_code c 
  c.ord
end

def get_char c
  (c.ord + 1).chr
end


p get_code('b')

p get_char('b')


















