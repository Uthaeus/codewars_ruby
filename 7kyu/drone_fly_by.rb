# You will be given two strings: lamps and drone. Lamps represents a row of lamps, currently off, each represented by 'x'. When these lamps are on, they should be represented by 'o'.

# The drone string represents the position of the drone 'T' (any better suggestion for character??) and its flight path up until this point '='. The drone always flies left to right, and always begins at the start of the row of lamps. Anywhere the drone has flown, including its current position, will result in the lamp at that position switching on.

# Return the resulting lamps string. See example tests for more clarity.


def fly_by(lamps, drone)
  # Good luck
  out = ''
  switched = drone.length
  diff = lamps.length - drone.length

  switched.times do 
    out += 'o'
  end

  diff.times do 
    out += 'x'
  end

  out
end


p fly_by('xxxxxx', '====T') #, 'ooooox'
p fly_by('xxxxxxxxx', '==T') #, 'oooxxxxxx'