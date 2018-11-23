# Here 's how it works: 2 buttons (red and blue) are connected to the LEDs (red and blue respectively). Buttons pressing pattern will be remembered and represented through the LEDs when the third button is pressed


def button_sequences(seqR, seqB)
    output = ''
    x = 0
    r_ready = true
    b_ready = true 
    both_ready = r_ready && b_ready 

    while x < seqR.length do 
        if seqR[x] == '1' && seqB[x] == '0'
            output += 'R'
        elsif seqR[x] == '0' && seqB[x] == '1'
            output += 'B'
        end
        x += 1
    end
    output 
end



p button_sequences("10011010", "10110111") # == "RBRB"