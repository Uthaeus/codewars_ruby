# Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.



def fake_bin(s)
  # Insert you code here...
  result = ''
  str_arr = s.split('')
  str_arr.each do |i|
    i.to_i < 5 ? result += '0' : result += '1'
  end
  result 
end



p fake_bin('45385593107843568') #, '01011110001100111'

                                  # "01011110001100111"