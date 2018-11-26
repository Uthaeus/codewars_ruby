# Here 's how it works: 2 buttons (red and blue) are connected to the LEDs (red and blue respectively). Buttons pressing pattern will be remembered and represented through the LEDs when the third button is pressed


def button_sequences(seqR, seqB)
    output = ''
    x = 0
    r_ready = true
    b_ready = true 

    while x < seqR.length do 
        if seqR[x] == '0'
            r_ready = true 
        end
        if seqB[x] == '0'
            b_ready = true 
        end
        if r_ready && b_ready
            if seqR[x] == '1' && seqB[x] == '1'
                r_ready = false
                b_ready = false 
                output += 'R'
            elsif seqB[x] == '1'
                b_ready = false 
                output += 'B'
            elsif seqR[x] == '1'
                r_ready = false 
                output += 'R'
            end
        end
        x += 1
    end
    output 
end



p button_sequences("10011010", "10110111") # == "RBRB"
p button_sequences("10011010", "10010111") #, "RRB"