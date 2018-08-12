# You have a group chat application, but who is online!?

# You want to show your users which of their friends are online and available to chat!

# Given an input of an array of objects containing usernames, status and time since last activity (in mins), create a function to work out who is online, offline and away.

# If someone is online but their lastActivity was more than 10 minutes ago they are to be considered away.


def who_is_online(friends)
  result = {
    'online'=> [],
    'offline'=> [],
    'away'=> []
  }

  friends.each do |f|
    if f['status'] == 'offline'
      result['offline'].push(f['username']) 
    elsif f['status'] == 'online'
      if f['last_activity'] > 10
        result['away'].push(f['username'])
      else
        result['online'].push(f['username']) 
      end
    end
  end
  result = result.select { |k, v| !result[k].empty? }
  result
end




# friends = [{"username"=> "David", "status"=> "online", "last_activity"=> 10},
#            {"username"=> "Lucy", "status"=> "offline", "last_activity"=> 22},
#            {"username"=> "Bob", "status"=> "online", "last_activity"=> 104}]
# p who_is_online(friends) #, {"online"=> ["David"], "offline"=> ["Lucy"], "away"=> ["Bob"]}

friends = [{"username"=> "Lucy", "status"=> "offline", "last_activity"=> 22},
           {"username"=> "Bob", "status"=> "online", "last_activity"=> 104}]
p who_is_online(friends) #, {"offline"=> ["Lucy"], "away"=> ["Bob"]})