# Each ticket takes one minutes to emit, the queue is well disciplined, Brit-style, and so it moves smoothly, with no waste of time.

# You will be given an array/list/vector with all the people queuing and the initial position of your buddy, so for example, knowing that your friend is in position 3 (index 2, he is the dude that wants 3 tickets!) and the initial queue is [2, 5, 3, 4, 6].

# The first dude gets his ticket and the queue goes now like this [5, 3, 4, 6, 1], then [3, 4, 6, 1, 4] and so on. In the end, our buddy will be queuing for 12 minutes, true story!



def queue(queuers,pos)
  #your code here
  que = queuers
  dude = queuers[pos] - 1
  total = pos 

  dude.times do 
    total += que.length
    que = que.map { |i| i - 1 }
    if que.include?(0)
      que.delete(0)
    end
    
  end

  total
end



p queue([2, 5, 3, 6, 4], 1) #, 18
p queue([2, 5, 3, 6, 4], 2) #, 12
p queue([2, 5, 3, 6, 4], 3) #, 20
p queue([2, 5, 3, 6, 4], 4) #, 17