# The concept of "smooth number" is applied to all those numbers whose prime factors are lesser than or equal to 7: 60 is a smooth number (2 * 2 * 3 * 5), 111 is not (3 * 37).


def is_smooth(n)
  #your code here
  primes = [2, 3, 5, 7, 9]
  x = 0
  result = []

  while x < primes.length do 
    if n % primes[x] == 0
      n /= primes[x]
      result << primes[x]
    else
      x += 1
    end
  end
  p n 
  p result

  if result.empty? || result[-1] > 7 || n > 7
    return 'non-smooth'
  elsif result[-1] == 2
    return 'power of 2'
  elsif result[-1] == 3
    return '3-smooth'
  elsif result[-1] == 5
    return 'Hamming number'
  elsif result[-1] == 7
    return 'humble number'
  end
end




p is_smooth(98) #, "humble number"
p is_smooth(4096) #, "power of 2"
p is_smooth(17) #, "non-smooth"