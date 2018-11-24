# Given two arrays, check whether they are similar.


def are_similar(a, b)
    return false if a.length != b.length 
    
    a.each do |ai|
        if b.include? ai 
            b.slice!(b.index(ai), 1)
        else
            return false 
        end
    end
    b.empty?
end



# p are_similar([2, 3, 1],[1, 3, 2]) #,true
# p are_similar([1, 2, 3],[1, 10, 2]) #,false
a = [565, 308, 289, 490, 688, 244, 789, 950, 50, 632, 775, 173, 580, 106]      
b = [] 
p are_similar(a, b)