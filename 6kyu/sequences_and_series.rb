#  n | score
# ---+-------
#  1 |  50
#  2 |  150
#  3 |  300
#  4 |  500
#  5 |  750
# Can you find a pattern in it? If so, then write a function getScore(n)/get_score(n)/GetScore(n) which returns the score for any positive number n:


def get_score(n)
  # do your magic here 
  (((n - 1) * 25) + 50) * n
end



p get_score(3) # == 300