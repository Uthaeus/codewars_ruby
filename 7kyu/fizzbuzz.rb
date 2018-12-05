# In this exercise, you will have to create a function named tiyFizzBuzz. This function will take on a string parameter and will return that string with some characters replaced, depending on the value:


def tiy_fizz_buzz(string)
    result = ''
    letters = ['aeiou', 'AEIOU', 'BCDFGHJKLMNPQRSTVWXYZ']
    string.chars.each do |c|
        if letters[0].include? c  
            result += 'Yard'
        elsif letters[1].include? c  
            result += 'Iron Yard'
        elsif letters[2].include? c  
            result += 'Iron'
        else  
            result += c  
        end
    end
    result 
end



p tiy_fizz_buzz("H") #, "Iron"
p tiy_fizz_buzz("Hello WORLD!")
#"IronYardllYard IronIron YardIronIronIron!"