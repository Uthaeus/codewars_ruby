# Complete the touchdown? method, which accepts an array of numbers that add up to 100. The numbers represent how many yards your team gained on each play. The method should return true if the plays would have resulted in a touchdown. Return false if your team would have run out of downs at any point before making the touchdown.


def touchdown? plays
    total_yards = 0
    down_yards = 0
    downs = 0
    plays.each do |p|
        down_yards += p 
        total_yards += p 
        downs += 1
        if down_yards >= 10
            downs = 0
            down_yards = 0
        end
        if downs == 4
            return false 
        end
    end
    total_yards >= 100 
end



# yards = [90, 5.4, 4.6]
# p touchdown?(yards) #, true

yards = [20, 1, 2, 3, 3, 5, 66]
p touchdown?(yards) #, false