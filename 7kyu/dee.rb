# Dee is lazy but she's kind and she likes to eat out at all the nice restaurants and gastropubs in town. To make paying quick and easy she uses a simple mental algorithm she's called The Fair %20 Rule. She's gotten so good she can do this in a few seconds and it always impresses her dates but she's perplexingly still single. Like you probably


def calc_tip(p, r)
    amount = (p.to_f / 10).round 
    case r 
    when 1
        then amount += 1
    when 0
        then amount -= 1
    when -1
        then amount = (amount / 2).floor - 1
    end
    amount <= 0 ? 0 : amount 
end



p calc_tip(5, 1) # , 2
p calc_tip(14, 1) # , 2
p calc_tip(14, 0) # , 0
p calc_tip(24, 1) # , 3