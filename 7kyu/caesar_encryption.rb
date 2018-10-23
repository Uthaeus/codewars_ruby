# A Caeser cipher shifts the letters in a message by the value dictated by the encryption key. Since Caeser's emails are very important, he wants all encryptions to have upper-case output, for example


def caeser(message, key)
    result = ''
    message.chars.each do |c|
        if c.ord >= 97 && c.ord <= 122
            temp = (c.ord - 32) + key 
            if temp > 90 
                temp = (temp - 90) + 64
            end
        elsif c.ord >= 65 && c.ord <= 90
            temp = c.ord + key 
            if temp > 90
                temp = (temp - 90) + 64
            end
        else
            temp = c.ord 
        end
        result += temp.chr 
    end
    result 
end



p caeser("hello", 7) #, "OLSSV"
p caeser("hello world", 0) #, "HELLO WORLD"