# Write a method that takes a list of yesterday's stock prices and returns the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.


def get_max_profit(stock_prices_yesterday)
    start = stock_prices_yesterday[0]
    finish = nil 
    max = nil 
    run = [] 
    x = 1 

    while x < stock_prices_yesterday.length do 
        if stocks[x] > stocks[x - 1]
            start << stocks[x]
        x += 1
    end
end



p get_max_profit([10, 7, 5, 8, 18, 4]) #,[5, 18, 13]