# Your function is given four arguments (kanga1, rate1, kanga2, rate2); the first kangaroo's starting point, the first kangaroo's speed, the second kangaroo's starting point, and the second kangaroo's speed.

# Return true if the above conditions are met, else false. Starting location and speed may vary wildly. The first kangaroo will usually start behind the second one and travel faster, but not always. Starting locations may be negative, but speeds will always be > 0.



def kangaroo(kanga1, rate1, kanga2, rate2)
  if kanga1 == kanga2
    return true
  end
  if kanga1 < kanga2 && rate1 < rate2 || kanga2 < kanga1 && rate2 < rate1
    return false
  end

  if kanga1 < kanga2
    first = kanga1
    last = kanga2
    first_speed = rate1
    last_speed = rate2
  else
    first = kanga2
    last = kanga1
    first_speed = rate2
    last_speed = rate1
  end

  while first <= last do 
    last += last_speed
    first += first_speed
    if first == last 
      return true
    end
  end
  false
end



p kangaroo(1571,4240,9023,4234) #, true
p kangaroo(-1571,4240,9023,4234) #, false