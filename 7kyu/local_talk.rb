# Anyway, as some basic language education(??) this kata requires you to turn any sentence provided (s) into ex-pat balinese waffle by inserting the word 'pak' between every other word. Simple 8kyu :D


def pak(s)
  s.split(' ').join(' pak ')
end



p pak("Take me to Semynak!") #, "Take pak me pak to pak Semynak!"