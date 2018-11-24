# You are given an initial 2-value array (x). You will use this to calculate a score


def explode arr
    result = []
    if arr[0].is_a?(Integer) && arr[1].is_a?(Integer)
        (arr.first + arr.last).times do
            result << arr 
        end
    elsif arr.first.is_a?(Integer) || arr.last.is_a?(Integer)
        num = arr.first.is_a?(Integer) ? arr.first : arr.last 
        num.times do 
            result << arr 
        end
    else
        result = 'Void!'
    end
    result 
end



p explode(['a', 3]) #, [['a', 3], ['a', 3], ['a', 3]]