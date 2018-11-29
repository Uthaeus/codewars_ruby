# You need to find out if the cat can catch the mouse from it's current position. The cat can jump (j) characters.


def cat_mouse(x,j)
    cat = x.index('C')
    dog = x.index('D')
    mouse = x.index('m')

    if cat == nil || dog == nil || mouse == nil 
        return 'boring without all three'
    elsif (cat - mouse).abs > j 
        return 'Escaped!'
    elsif dog > cat && dog < mouse || dog < cat && dog > mouse 
        return 'Protected!'
    else
        return "Caught!"
    end
end



p cat_mouse('............C.............D..m...', 8) #, "Escaped!"
p cat_mouse('m.C...', 5) #, "boring without all three"
p cat_mouse('.CD......m.', 10) #, "Protected!"