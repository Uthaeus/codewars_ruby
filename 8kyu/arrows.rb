# You have a quiver of arrows, but some have been damaged. The quiver contains arrows with an optional range information (different types of targets are positioned at different ranges), so each item is an arrow.


def any_arrows(arrows)
    ammo = arrows.length
    arrows.each do |a|
        a.each do |k, v|
            if k == 'damaged'
                ammo -= 1
            end
        end
    end
    ammo > 0
end



p any_arrows([{'range'=> 5}, {'range'=> 10, 'damaged'=> true}, {'damaged'=> true}]) #, true
p any_arrows([]) #, false