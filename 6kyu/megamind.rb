# Given the values of hp, dps, shots and regen, find the minimum number of times Megamind needs to shoot to defeat Hal Stewart. If it is not possible to defeat him, return -1 instead.


def mega_mind(hp, dps, shots, regen)
    orig_health = hp 
    total_shots = 0
    clip = shots 

    loop do 
        hp -= dps 
        total_shots += 1
        clip -= 1
        return total_shots if hp <= 0
        if clip == 0
            clip = shots 
            hp += regen 
        end
        return -1 if hp >= orig_health
    end
end



p mega_mind(13, 4, 3, 1) #, 4
p mega_mind(13, 4, 3, 50) #, -1