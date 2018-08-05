# #Task: The function date_nb_days (or dateNbDays...) with parameters a0, a, p will return, as a string, the date on which you have just reached a.
require 'bigdecimal'
require 'bigdecimal/math'
include BigMath

def date_nb_days(a0, a, p)
    # your code
  per_day = BigDecimal((p / 36000))
  count = 0

  while a0 <= a do 
    a0 += (a0 * per_day)
    count += 1
  end

  count
end



p date_nb_days(3525, 4822, 3) #, "2026-04-18"