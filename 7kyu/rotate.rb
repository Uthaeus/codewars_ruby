# You have the following sequence of numbers and you must return the greatest


def max_rot(n)
    results = [n]
    arr = n.to_s.split('')
    x = 0
    while x < arr.length - 1 do
        if x == 0
            arr = arr.rotate 
            results << arr.join('').to_i 
        else
            head = arr[0...x]
            body = arr[x..-1]
            arr = head + body.rotate
            results << arr.join('').to_i
        end
        x += 1
    end
    results.max 
end



p max_rot(38458215) #, 85821534