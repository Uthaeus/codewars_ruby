# Groups of characters decided to make a battle. Help them to figure out which group is more powerful. Create a function that will accept 2 variables and return the one who's stronger.


def battle(x, y)
    x_score = 0
    y_score = 0

    x.chars do |i| 
        if i.ord >= 65 && i.ord <= 90
            x_score += i.ord - 64 
        end
    end

    y.chars do |i|
        if i.ord >= 65 && i.ord <= 90
            y_score += i.ord - 64
        end
    end
    x_score == y_score ? "Tie!" : x_score > y_score ? x : y 
end



p battle("FOUR", "FIVE") #, "FOUR"
p battle("ONE", "NEO") #, "Tie!"