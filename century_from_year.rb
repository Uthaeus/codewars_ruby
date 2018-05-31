# Introduction
# The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including the year 200, etc.

# Task :
# Given a year, return the century it is in.


def century(year)
  # Your solution goes here, warrior
  return (year.to_f / 100).ceil
end



p century(2000) #, 20, 'Testing for year 2000')
p century(1601) #, 17, 'Testing for year 1601')
p century(89) #, 1, 'Testing for year 89')