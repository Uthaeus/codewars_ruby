# Given two words, how many letters do you have to remove from them to make them anagrams?
# Example
# First word : c od e w ar s (4 letters removed)
# Second word : ha c k er r a nk (6 letters removed)
# Result : 10
# Hints
# A word is an anagram of another word if they have the same letters (usually in a different order).
# Do not worry about case. All inputs will be lowercase



def anagram_difference(w1, w2)
    #..
    tester = nil
    other = nil
    count = 0
    if w1.length > w2.length 
      tester = w2
      other = w1
    else
      tester = w1
      other = w2
    end

    tester_arr = tester.split('')
    other_arr = other.split('')

    tester_arr.each do |i|
      if other_arr.include?(i)
        other_arr.delete_at(other_arr.index(i))
        count += 1
      end
    end
    test_count = tester.length - count 
    other_count = other.length - count 

    test_count + other_count
end



p anagram_difference('codewars', 'hackerrank') #, 10
p anagram_difference('aab', 'a') #, 2