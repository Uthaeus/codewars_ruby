#A database entry specialist goofed up and hence made duplicate entries of the marks obtained by a few students. You need to clean it up and make sure the data has only single entries per user


def dataclean(values)
    #Insert Values Here
    result = []
    return nil if values == nil 
    values.each do |set|
        flag = true 
        result.each do |res|
            if res[0] == set [0]
                flag = false
            end
        end
        if flag 
            result << set 
        end
    end
    result.sort { |a, b| a[1] - b[1] }
end



p dataclean([['a',5],['b',3],['a',5]]) #,[['b',3],['a',5]]
p dataclean([["d",1], ["d",2], ["d",3], ["E",1], ["C",5]]) #,[["d",1], ["E",1], ["C",5]]