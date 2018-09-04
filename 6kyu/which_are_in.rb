# Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.


def in_array(array1, array2)
  result = []
  out = []

  array1.each do |a1|
    temp = array2.select { |i| i.include? a1 }
    temp.sort do |a, b|
      if a.length == b.length 
        a > b 
      else
        a.length - b.length
      end
    end
    result << [temp[0], a1]
  end

  sorted_result = result.sort do |a, b|
    if a[0].length == b[0].length
      a[0] > b[0] 
    else
      a[0].length - b[0].length 
    end
  end

  sorted_result.each do |i|
    out << i[1]
  end

  out
end



a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
p in_array(a1, a2) #, ["arp", "live", "strong"]