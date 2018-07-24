# Beaches are filled with sand, water, fish, and sun. Given a string, calculate how many times the words "Sand", "Water", "Fish", and "Sun" appear without overlapping (regardless of the case).



def sum_of_a_beach(beach)
  # your code here
  my_string = beach.downcase

  my_string.gsub!(/sand|water|fish|sun/, '!')

  my_string.count('!')
end



p sum_of_a_beach("sunsunsunsun") #, 4
p sum_of_a_beach("123FISH321") #, 1
p sum_of_a_beach("SanD") #, 1
p sum_of_a_beach("sunshine") #, 1