# Write a method to predict the final outcome


def clonewars(kata_per_day)
    clones = 1
    total_kata = kata_per_day
    r = kata_per_day - 1

    r.times do
        kata_per_day -= 1
        clones *= 2
        total_kata += kata_per_day * clones
    end
    [clones, total_kata]
end



p clonewars(5) #, [16, 57]
p clonewars(10) #, [512, 2036]