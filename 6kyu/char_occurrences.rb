# Write a method that takes a string as an argument and groups the number of time each character appears in the string as a hash sorted by the highest number of occurrences.


def get_char_count string
  h = {}
  result = {}
  arr = string.downcase.split('').select { |c| c.ord >= 97 && c.ord <= 122 || c.ord >= 48 && c.ord <= 57 }
  
  arr.each do |c|
    if h[c]
      h[c] += 1
    else
      h[c] = 1
    end
  end
  
  h.each do |k, v|
    if result[v]
      result[v] << k
      result[v].sort!
    else 
      result[v] = [k]
    end
  end
  result.sort { |(ak, _v), (bk, _v)| bk - ak }.to_h
end



# p get_char_count("Mississippi") #, {4=>["i", "s"], 2=>["p"], 1=>["m"]},
# p get_char_count("Hello. Hello? HELLO!") #, {6=>["l"], 3=>["e", "h", "o"]}
#p get_char_count("abc123") #, {1=>["1", "2", "3", "a", "b", "c"]}
#p get_char_count("%V+nfiksOAnqD4n1m089LA=gi$><sovpn..npNIs2*$a3KV=tKQV.6,-sUdr^j,dR.ojkB0Kl^KO-4ZkdasPa")
  #{7=>["k"], 6=>["n"], 5=>["a", "s"], 4=>["d", "o", "v"], 3=>["i", "p"], 2=>["0", "4", "j", "l", "q", "r"], 1=>["1", "2", "3", "6", "8", "9", "b", "f", "g", "m", "t", "u", "z"]},
  # {7=>["k"], 6=>["n"], 5=>["a", "s"], 4=>["d", "o", "v"], 3=>["i", "p"], 2=>["0", "4", "j", "l", "q", "r"], 1=>["1", "2", "3", "6", "8", "9", "b", "f", "g", "m", "t", "u"]}