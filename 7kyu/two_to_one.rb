# Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters,


def longest(a1, a2)
    # your code
    combo = a1.split('') + a2.split('')
    combo.uniq.sort { |a, b| a <=> b }.join('')
end



p longest("aretheyhere", "yestheyarehere") #, "aehrsty"