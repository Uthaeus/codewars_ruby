# Beaches are filled with sand, water, fish, and sun. Given a string, calculate how many times the words "Sand", "Water", "Fish", and "Sun" appear without overlapping (regardless of the case).



def sum_of_a_beach(beach)
  # your code here
  test_string = beach.downcase.split('')
  words = ['sand', 'water', 'fish', 'sun']
  starters = []
  count = 0
  x = 0
  finds = []

  words.each do |w|
    starters << w[0]
  end

  while x < test_string.length do 

    if starters.include?(test_string[x])

      words.each do |word|
        len = word.length
        if test_string[x...x + len] == word 
          count += 1
          x = 0
          test_string = test_string[x + len..-1]
        end
      end
    end
    x += 1
  end

  count
end



p sum_of_a_beach("sunsunsunsun") #, 4
p sum_of_a_beach("123FISH321") #, 1
p sum_of_a_beach("SanD") #, 1
p sum_of_a_beach("sunshine") #, 1