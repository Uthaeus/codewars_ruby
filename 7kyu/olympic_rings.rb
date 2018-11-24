# Your job is to count the 'rings' in each letter and divide the total number by 2. Round the answer down. Once you have your final score:


def olympic_ring(string)
    rings = 'abdegopqADGOPQR'
    count = 0
    string.chars.each do |c|
        if rings.include? c  
            count += 1
        elsif c == 'B'
            count += 2
        end
    end
    total = (count / 2).floor
    total < 2 ? 'Not even a medal!' : 
    total == 2 ? 'Bronze!' : 
    total == 3 ? 'Silver!' : 'Gold!'
end



p olympic_ring('eCEHWEPwwnvzMicyaRjk') #, 'Bronze!'
p olympic_ring('EWlZlDFsEIBufsalqof') #, 'Silver!'