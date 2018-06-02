# The T9 typing predictor helps with suggestions for possible word combinations on an old-style numeric keypad phone. Each digit in the keypad (2-9) represents a group of 3-4 letters. To type a letter, press once the key which corresponds to the letter group that contains the required letter. Typing words is done by typing letters of the word in sequence.



def T9(words, seq)
  # your code here
  dict = {
    '2': ['a', 'b', 'c'],
    '3': ['d', 'e', 'f'],
    '4': ['g', 'h', 'i'],
    '5': ['j', 'k', 'l'],
    '6': ['m', 'n', 'o'],
    '7': ['p', 'q', 'r', 's'],
    '8': ['t', 'u', 'v'],
    '9': ['w', 'x', 'y', 'z']
  }

  
  
  result = []
  seq_arr = seq.split('')
  reject = seq_arr.map {|i| dict[i.to_sym][0]}.join('') 

  if words.empty? 
    return [reject]
  end

  words.each do |word|
    text = ''
    word_arr = word.downcase.split('')
    x = 0
    while x < seq_arr.length do 
      if dict[seq_arr[x].to_sym].include?(word_arr[x])
        text += word_arr[x]
      end
      if text == word.downcase
        result << word 
      end
      x += 1
    end    
  end 
  result.empty? ? [reject] : result

end



p T9(['Hello', 'world'], '43556') #, ['Hello']
p T9(['qveqa'], '43556') #, ['gdjjm']
p T9(['gold', 'word'], '4663') #, ['gmmd']
p T9([],'43556') #, ['gdjjm']
p T9(['good', 'home', 'new'], '4663') #, ['good','home']









