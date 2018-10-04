# You will be given a list of strings and your task will be to return the values of the strings as explained above multiplied by the position of that string in the list. For our purpose, position begins with 1.


def wordValue(arr)
    alph = ('a'..'z').to_a
    result = []
    
    arr.each.with_index(1) do |i, ind|
        temp = i.split('')
        s = 0
        temp.each do |t|
            if alph.include?(t)
                s += (alph.index(t) + 1)
            end
        end
        result << s * ind  
    end
    result 
end



p wordValue(["abc abc","abc abc","abc","abc"]) #,[12,24,18,24]