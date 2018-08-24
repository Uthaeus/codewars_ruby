#X and Y are playing a game. A list will be provided which contains n pairs of strings and integers. They have to add the integeri to the ASCII values of the stringi characters. Then they have to check if any of the new added numbers is prime or not. If for any character of the word the added number is prime then the word will be considered as prime word.


def prime_word(arr)
  #..
  result = []

  arr.each do |pair|
    flag = false
    str_arr = pair[0].split('')
    vals = str_arr.map { |l| l.ord + pair[1] }

    vals.each do |v|
      if isPrime?(v)
        flag = true
      end
    end

    if flag
      result << 1
    else
      result << 0
    end
  end

  result
end

def isPrime?(num)
  (2..Math.sqrt(num)).each { |i| return false if num % i == 0}
  true
end



p prime_word([["Emma",30],["Liam",30]]) #, [1,1]

