# Each day a plant is growing by upSpeed meters. Each night that plant's height decreases by downSpeed meters due to the lack of sun heat. Initially, plant is 0 meters tall. We plant the seed at the beginning of a day. We want to know when the height of the plant will reach a certain level.


def growing_plant(upSpeed, downSpeed, desiredHeight)
    count = 0
    height = 0

    loop do 
        height += upSpeed
        count += 1
        
        return count if height >= desiredHeight
        height -= downSpeed
    end
end



p growing_plant(10,9,4) #,1
p growing_plant(100,10,910) #,10