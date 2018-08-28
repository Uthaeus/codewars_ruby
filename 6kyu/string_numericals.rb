# For each symbol in the string if it's the first character occurence, replace it with a '1', else replace it with the amount of times you've already seen it...


def numericals(str)

  result = []
  obj = {}
  x = 0

  while x < str.length do 
    if obj[str[x]]
      obj[str[x]] += 1
    else
      obj[str[x]] = 1
    end
    result << obj[str[x]]
    x += 1
  end

  result.join('')
end



p numericals("Hello") #, "11121"
p numericals("Hello, World!") #, "1112111121311"