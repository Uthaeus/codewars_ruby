# You are a given a date as parameter and you need to return the date of 1 Gs from the given date.
# to_date
require 'date'

def gigasecond date
    #date + (10 ** 9).seconds
    t = date.to_time.to_i + 10 ** 9
    Time.at(t).to_date 
end



p gigasecond(Date.new(1977, 6, 13)) #, Date.new(2009, 2, 19)