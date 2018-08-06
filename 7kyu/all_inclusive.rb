# Output of function contain_all_rots(strng, arr) (or containAllRots or contain-all-rots):


def contain_all_rots(strng, arr)
    # your code
  rots = []

  strng.length.times do 
    rots << strng
    strng = strng.split('').rotate.join('')
  end

  result = arr | rots 
  result.length == arr.length
end



p contain_all_rots("bsjq", ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"]) #, true
p contain_all_rots("XjYABhR", ["TzYxlgfnhf", "yqVAuoLjMLy", "BhRXjYA", "YABhRXj", "hRXjYAB", "jYABhRX", "XjYABhR", "ABhRXjY"]) #, false