# Write a function that takes two strings, A and B, and returns the length of the longest possible substring that can be formed from the concatenation of either A + B or B + A containing only characters that do not appear in both A and B


def find_longest(a, b)
    one = a + b 
    two = b + a 
    max = 0
    count = 0

    x = 0
    while x < one.length do 
        if a.include?(one[x]) && b.include?(one[x])
            count = 0
        else
            count += 1
        end
        if count > max 
            max = count 
        end
        x += 1
    end

    x = 0
    count = 0
    while x < two.length do 
        if a.include?(two[x]) && b.include?(two[x])
            count = 0
        else
            count += 1
        end
        if count > max 
            max = count 
        end
        x += 1
    end
    max 
end



p find_longest("railroad","is") #, 5
p find_longest("catfish","surgery") #, 11