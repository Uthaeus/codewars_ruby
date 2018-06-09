# Scenario
# You're saying good-bye your best friend , See you next happy year .

# Happy Year is the year with only distinct digits , (e.g) 2018

# Task
# Given a year, Find The next happy year or The closest year You'll see your best friend  !alt !alt



def next_happy_year(year)
  #your code here
  result = nil
  test_year = year + 1
  year_length = year.to_s.length 
  while result == nil do 
    new_year = test_year.to_s.split('').uniq.join('')
    if new_year.length == year_length
      result = new_year.to_i
    end
    test_year += 1 
  end
  result
end



p next_happy_year(1001) #,1023
p next_happy_year(7712) #,7801