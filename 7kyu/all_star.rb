# Create a function, called translate(), that takes a string argument and returns the input string into "pig latin"


def translate(word)
    return word if word.length <= 2
    vowels = 'aeiouz'
    result = nil
    if !vowels.include?(word[0])
        result = word[1..-1] + word[0] + 'ay'
    else
        result = word + 'ay'
    end
    result 
end



p translate("emily") # ,"emilyay","Expected: 'emilyay'"