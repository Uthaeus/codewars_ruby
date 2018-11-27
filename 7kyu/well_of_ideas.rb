# In this kata you need to check the provided 2 dimensional array (x) for good ideas 'good' and bad ideas 'bad'. If there are one or two good ideas, return 'Publish!', if there are more than 2 return 'I smell a series!'. If there are no good ideas, as is often the case, return 'Fail!'.


def well(x)
    good = x.flatten.select { |i| i.downcase == 'good' }.count
    good < 1 ? 'Fail!' : good < 3 ? 'Publish!' : 'I smell a series!'
end



p well([['bad', 'bAd', 'bad'], ['bad', 'bAd', 'bad'], ['bad', 'bAd', 'bad']]) #, 'Fail!'
p well([['gOOd', 'bad', 'BAD', 'bad', 'bad'], ['bad', 'bAd', 'bad'], ['GOOD', 'bad', 'bad', 'bAd']]) #, 'Publish!'