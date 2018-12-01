# Hence given a string s of substrings s(i) the function arrange with the previous process should return a unique string t having the property (P).


def arrange(strng)
    arr = strng.split(' ')
    x = 0
    lesser = true

    while x < arr.length - 1 do 
        if lesser
            if arr[x].length > arr[x + 1].length
                arr[x], arr[x + 1] = arr[x + 1], arr[x]
            end
        else
            if arr[x].length < arr[x + 1].length 
                arr[x], arr[x + 1] = arr[x + 1], arr[x]
            end
        end
        lesser = !lesser 
        x += 1
    end
    result = arr.each_with_index.map { |i, ind| ind.odd? ? i.upcase : i.downcase } 
    result.join(' ')
end



p arrange("who hit retaining The That a we taken") #, "who RETAINING hit THAT a THE we TAKEN"
p arrange("on I came up were so grandmothers") #, "i CAME on WERE up GRANDMOTHERS so"
