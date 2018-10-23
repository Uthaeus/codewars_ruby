# Help Johnny by writing a function, that takes the amount of handshakes and returns the minimal amount of people needed to perform these handshakes (a pair of farmers handshake only once).


def get_participants(handshakes)
    shakes = []
    result = []
    x = 1
    handshakes.times do 
        shakes << x
        x += 1
    end
end



p get_participants(6) #, 4