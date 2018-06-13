# Kate and Michael want to buy a pizza and share it. Depending on the price of the pizza, they are going to divide the costs:

# If the pizza is less than €5,- Michael invites Kate (i.e. he is paying the full price)
# Otherwise Kate will also contribute 1/3 of the price, but no more than €10 (she's broke :-) Thus, Michael will pay 2/3 of the costs, or more.
# How much is Michael going to pay? Calculate the amount with two decimals, if necessary.



def michael_pays(costs)
  # your code here
  if costs < 5 
    return costs
  end

  kate = costs * (1 / 3.to_f)

  if kate >= 10
    kate = 10
  end
  result = costs - kate 

  if result == result.floor
    return result
  else
    return result.round(2)
  end
end



p michael_pays(80) #, 70
p michael_pays(22) #, 14.67