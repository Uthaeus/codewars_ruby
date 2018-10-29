# Everyone knows passphrases. One can choose passphrases from poems, songs, movies names and so on but frequently they can be guessed due to common cultural references. You can get your passphrases stronger by different means
# 48 - 57

def play_pass(str, n)
    result = []

    str.split('').each_with_index do |c, ind|
        if c.ord >= 65 && c.ord <= 90 
            temp = c.ord + n 
            if temp > 90
                temp = temp % 90 + 64
            end
            if ind.even? 
                result << temp.chr
            else
                result << temp.chr.downcase 
            end
        elsif c.ord >= 48 && c.ord <= 57
            temp_num = 9 - c.to_i
            result << temp_num
        else
            result << c  
        end
    end
    result.reverse.join('')
end



p play_pass("I LOVE YOU!!!", 1) #, "!!!vPz fWpM J"
p play_pass("MY GRANMA CAME FROM NY ON THE 23RD OF APRIL 2015", 2)  
# "4897 NkTrC Hq fT67 GjV Pq aP OqTh gOcE CoPcTi aO"