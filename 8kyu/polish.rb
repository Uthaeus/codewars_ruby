# Your task is to change the letters with diacritics:


def correct_polish_letters(s)
    pols = ['ą', 'ć', 'ę', 'ł', 'ń', 'ó', 'ś', 'ź', 'ż']
    correct = ['a', 'c', 'e', 'l', 'n', 'o', 's', 'z', 'z']
    result = ''

    s.split('').each do |l|
        if pols.include?(l)
            ind = pols.index(l)
            result += correct[ind]
        else
            result += l 
        end
    end
    result 
end


p correct_polish_letters("Jędrzej Błądziński")  #, "Jedrzej Bladzinski"