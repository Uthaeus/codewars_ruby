# A stream of data is received and needs to be reversed.


def data_reverse(data)
    result = []
    temp = []
    x = 0

    while x < data.length do 
        temp << data[x]
        if temp.length == 8
            result.unshift temp 
            temp = []
        end
        x += 1
    end
    result.flatten
end



p data_reverse(
    [1,1,1,1,1,1,1,1, 0,0,0,0,0,0,0,0, 0,0,0,0,1,1,1,1, 1,0,1,0,1,0,1,0] )
    #[1,0,1,0,1,0,1,0, 0,0,0,0,1,1,1,1, 0,0,0,0,0,0,0,0, 1,1,1,1,1,1,1,1]