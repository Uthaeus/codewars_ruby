# Write a function that accepts fight string consists of only small letters and return who wins the fight. When the left side wins return Left side wins!, when the right side wins return Right side wins!, in other case return Let's fight again!


def alphabet_war(fight)
    left = 0
    right = 0
    left_side = { 'w' => 4, 'p' => 3, 'b' => 2, 's' => 1 }
    right_side = { 'm' => 4, 'q' => 3, 'd' => 2, 'z' => 1 }

    fight.chars do |i|
        if left_side[i]
            left += left_side[i]
        elsif right_side[i]
            right += right_side[i]
        end
    end
    left == right ? "Let's fight again!" : left > right ? "Left side wins!" : "Right side wins!"
end



p alphabet_war("zzzzs") #, "Right side wins!"


# The left side letters and their power:

#  w - 4
#  p - 3 
#  b - 2
#  s - 1
# The right side letters and their power:

#  m - 4
#  q - 3 
#  d - 2
#  z - 1