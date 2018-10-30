# You are given an array of up to four non-negative integers, each less than 256.


def array_packing(arr)
    result = []

    arr.each do |i|
        temp = i.to_s(2)
        while temp.length < 8 do 
            temp = '0' + temp 
        end
        result << temp 
    end
    result.reverse.join('').to_i(2)
end



p array_packing([24, 85, 0]) # , 21784
p array_packing([1, 1]) # , 257
p array_packing([23, 45, 39]) # , 2567447