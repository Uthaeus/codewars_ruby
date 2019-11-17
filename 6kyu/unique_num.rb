# There is an array with some numbers. All numbers are equal except for one. Try to find it!


def find_uniq(arr)
    res = {}
    arr.each do |a|
        if res[a]
            res[a] += 1
        else
            res[a] = 1
        end
    end
    res.select {|key, val| val == 1}.first.first

    res = {}
    arr.each do |a|
        if res[a]
            res[a] += 1
        else
            res[a] = 1
        end
    end
end



p find_uniq([ 0, 0, 0.55, 0, 0 ]) #, 0.55