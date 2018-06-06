# Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').



def solution(str)
  new_str = str.gsub(/\s+/, '')
  if new_str.length.odd?
    new_str += '_'
  end

  new_str.scan(/.{1,2}/)
end



p solution('this is a test')


