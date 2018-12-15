# You are taking a music class and you need to know what notes are on every fret of the guitar. 


def what_note(string, fret)
    notes = ['A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#']
    ind = (notes.index(string.upcase) + fret) % notes.length
    notes[ind] 
end



p what_note("E", 18) #, "A#"