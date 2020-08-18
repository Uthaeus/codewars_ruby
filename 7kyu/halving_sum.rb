


def halving_sum(n)
    result = [n]

    loop do 
        temp = (result.last / 2).floor

        if temp >= 1
            result << temp 
        else
            break
        end
    end
    result.reduce(&:+)
end


p halving_sum(25) #, 47