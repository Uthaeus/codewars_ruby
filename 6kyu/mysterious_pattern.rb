# Given a positive integer m, you can generate a Fibonacci sequence with a length of m:


def mysterious_pattern(m, n)
    fibs = [1, 1]
    x = 1
    while fibs.length < m do 
        temp = fibs[x] + fibs[x - 1]
        fibs << temp 
        x += 1
    end
    mods = fibs.map { |i| i % n }
    p mods 
    result = Array.new(mods.max + 1) { Array.new(m, ' ') }
    mods.each_with_index do |mod, index|
        result[mod][index] = 'o' 
    end
    x = 0
    while x < result.length do 
        result[x] = result[x].join('')
        x += 1
    end
    result.join("\n").strip
end



p mysterious_pattern(4, 5) 
# """
# oo
#   o
#    o
# """