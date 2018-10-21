# Given an array (x) you need to calculate the Paul Misery Score. The values are worth the following points:


def paul(x)
    result = nil
    score = 0

    x.each do |i|
        if i == 'kata'
            score += 5
        elsif i == 'Petes kata'
            score += 10
        elsif i == 'eating'
            score += 1
        end
    end
    if score < 40
        result = 'Super happy!'
    elsif score >= 40 && score < 70
        result = 'Happy!'
    elsif score >= 70 && score < 100
        result = 'Sad!'
    else
        result = 'Miserable!'
    end
    result 
end



p paul(['life', 'Petes kata', 'Petes kata', 'Petes kata', 'eating']) #, 'Super happy!'