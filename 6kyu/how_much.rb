# If I were to buy 9 cars costing c each, I'd only have 1 Zlotty (or was it Meticals?) left.

# And if I were to buy 7 boats at b each, I'd only have 2 Ringglets (or was it Zlotty?) left.

# Could you tell me in each possible case:

# how much money f he could possibly have
# the cost c of a car
# the cost b of a boat?
# So, I will have a better idea about his fortune. Note that if m-n is big enough, you might have a lot of possible answers.

# Each answer will be given as ["M: f", "B: b", "C: c"] and all the answers as [ ["M: f", "B: b", "C: c"] ... ]. M stands for "Money", B for boats, C for cars.

# m and n are positive or null integers with m <= n or m >= n, m and n inclusive.



def howmuch(m, n)
    # your code
  result_arr = []
  result = ""
  range_arr = (m..n).to_a
  range_arr.each do |i|
    btemp = 0
    ctemp = 0
    if (i - 2) % 7 == 0
      btemp = (i - 2) / 7
    end
    if (i - 1) % 9 == 0
      ctemp = (i - 1) / 9
    end
    if i - 7 * btemp == 2 && i - 9 * ctemp == 1
      result = ["M: #{i}", "B: #{btemp}", "C: #{ctemp}"]
      result_arr << result 
    end
  end
  result_arr
end



p howmuch(1, 100) #, [["M: 37", "B: 5", "C: 4"] #, ["M: 100", "B: 14", "C: 11"]]



