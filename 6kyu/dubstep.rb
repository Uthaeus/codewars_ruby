# Return the words of the initial song that Polycarpus used to make a dubsteb remix. Separate the words with a space.


def song_decoder(song)
    song.gsub(/WUB/, ' ').split(' ').join(' ')
end



p song_decoder("AWUBBWUBC") #, "A B C"
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") #, "A B C"