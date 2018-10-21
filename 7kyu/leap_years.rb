# In this kata you should simply determine, whether a given year is a leap year or not. In case you don't know the rules, here they are:


def is_leap_year(year)
    year % 400 == 0 || year % 100 != 0 && year % 4 == 0
end



p is_leap_year(2004) #, true, 'Year 2004 was a leap year!'
p is_leap_year(1194) #, false, 'Year 1194 was NOT a leap year!'