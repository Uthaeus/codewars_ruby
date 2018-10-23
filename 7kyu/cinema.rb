# John wants to know how many times he must go to the cinema so that the final result of System B, when rounded up to the next dollar, will be cheaper than System A.

# The function movie has 3 parameters: card (price of the card), ticket (normal price of a ticket), perc (fraction of what he paid for the previous ticket) and returns the first n such that



def movie(card, ticket, perc)
    # your code
    reduced = (ticket * perc)  
    count = 0
    reg = 0
    total = card 

    while total >= reg do 
        reg += ticket 
        temp = ticket 
        count.times do 
            temp *= perc 
        end
        total += temp * perc 
        count += 1
    end
     
    count 
end




p movie(500, 15, 0.9) #, 43
p movie(100, 10, 0.95) #, 24