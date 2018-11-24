# The part with a capital letter should be the first word.


def re_ordering(text)
    text_arr = text.split(' ')
    text_arr.each_with_index do |i, ind|
        if i[0].ord >= 65 && i[0].ord <= 90
            temp = text_arr.slice!(ind, 1)
            text_arr.unshift(temp)
        end
    end
    text_arr.join(' ')
end



p re_ordering('bull color pig Patrick') #, 'Patrick bull color pig'